package com.fmi.azure_ad_authentication

import android.content.Context
import android.os.Handler
import android.os.Looper
import android.util.Log
import com.microsoft.identity.client.*
import com.microsoft.identity.client.IPublicClientApplication.IMultipleAccountApplicationCreatedListener
import com.microsoft.identity.client.exception.MsalClientException
import com.microsoft.identity.client.exception.MsalException
import com.microsoft.identity.client.exception.MsalServiceException
import com.microsoft.identity.client.exception.MsalUiRequiredException
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel

class Msal(context: Context, activity: FlutterActivity?) {
    internal val applicationContext = context
    internal var activity: FlutterActivity? = activity

    var adMultipleAuthentication: IMultipleAccountPublicClientApplication? = null
    var adSingleAuthentication: ISingleAccountPublicClientApplication? = null

    lateinit var accountList: List<IAccount>

    fun setActivity(activity: FlutterActivity) {
        this.activity = activity;
    }

    internal fun isClientInitialized(): Boolean =
        adMultipleAuthentication != null || adSingleAuthentication != null

    internal fun getSingleApplicationCreatedListener(result: MethodChannel.Result): IPublicClientApplication.ISingleAccountApplicationCreatedListener {
        return object : IPublicClientApplication.ISingleAccountApplicationCreatedListener {
            override fun onCreated(application: ISingleAccountPublicClientApplication?) {
                adSingleAuthentication = application
                result.success(true)
            }

            override fun onError(exception: MsalException?) {
                result.error(
                    "INIT_ERROR",
                    "Error initializting single access client = ${exception.toString()}",
                    exception?.localizedMessage
                )
            }
        }
    }

    internal fun getMultipleApplicationCreatedListener(result: MethodChannel.Result): IMultipleAccountApplicationCreatedListener {

        return object : IMultipleAccountApplicationCreatedListener {
            override fun onCreated(application: IMultipleAccountPublicClientApplication) {
                adMultipleAuthentication = application
                result.success(true)
            }

            override fun onError(exception: MsalException?) {
                result.error(
                    "INIT_ERROR",
                    "Error initializting multiple access client = ${exception.toString()}",
                    exception?.localizedMessage
                )
            }
        }
    }

    internal fun getAuthCallback(result: MethodChannel.Result): AuthenticationCallback {
        return object : AuthenticationCallback {
            override fun onSuccess(authenticationResult: IAuthenticationResult) {
                Handler(Looper.getMainLooper()).post {
                    result.success("{\"accessToken\":\"${authenticationResult.accessToken}\",\"expiresOn\":\"${authenticationResult.expiresOn}\",\"idToken\":\"${authenticationResult.account.getIdToken()}\"}")
                }
            }

            override fun onError(exception: MsalException) {
                Handler(Looper.getMainLooper()).post {
                    result.error(
                        "AUTH_ERROR",
                        "Authentication failed ${exception.localizedMessage}",
                        exception.errorCode
                    )
                }
            }

            override fun onCancel() {
                Handler(Looper.getMainLooper()).post {
                    result.error("CANCELLED", "User cancelled", null)
                }
            }
        }
    }

    /**
     * Callback used in for silent acquireToken calls.
     */
    internal fun getAuthSilentCallback(result: MethodChannel.Result): SilentAuthenticationCallback {
        return object : SilentAuthenticationCallback {
            override fun onSuccess(authenticationResult: IAuthenticationResult) {
                Handler(Looper.getMainLooper()).post {
                    result.success("{\"accessToken\":\"${authenticationResult.accessToken}\",\"expiresOn\":\"${authenticationResult.expiresOn}\",\"idToken\":\"${authenticationResult.account.getIdToken()}\"}")
                }
            }

            override fun onError(exception: MsalException) {
                when (exception) {
                    is MsalClientException -> {
                        result.error(
                            "NO_SCOPE",
                            "Call must include a scope",
                            exception.localizedMessage
                        )
                    }
                    is MsalServiceException -> {
                        result.error(
                            "NO_SCOPE",
                            exception.localizedMessage,
                            exception.localizedMessage
                        )
                    }
                    is MsalUiRequiredException -> {
                        result.error(
                            "NO_SCOPE",
                            "Call must include a scope",
                            exception.localizedMessage
                        )
                    }
                    else -> {
                        Log.d("MSAL_FLUTTER", "Authentication failed: $exception")
                    }
                }
            }
        }
    }

    /**
     * Remove accounts
     */
    internal fun removeAccount() {
        accountList = listOf()
    }

    /**
     * Load currently signed-in accounts, if there's any.
     */
    internal fun loadAccounts(result: MethodChannel.Result) {
        adMultipleAuthentication?.getAccounts(object :
            IPublicClientApplication.LoadAccountsCallback {

            override fun onTaskCompleted(resultList: List<IAccount>) {
                accountList = resultList
                result.success(true)
            }

            override fun onError(exception: MsalException) {
                result.error(
                    "NO_ACCOUNT",
                    "No multiple accounts is available to acquire token silently for",
                    exception
                )
            }
        })

        adSingleAuthentication?.getCurrentAccountAsync(object :
            ISingleAccountPublicClientApplication.CurrentAccountCallback {
            override fun onAccountLoaded(activeAccount: IAccount?) {
                activeAccount?.let { account ->
                    accountList = listOf(account)
                    result.success(true)
                } ?: run {
                    accountList = listOf()
                }
            }

            override fun onAccountChanged(priorAccount: IAccount?, currentAccount: IAccount?) {
                if (currentAccount == null) {
                    accountList = listOf()
                }
            }

            override fun onError(exception: MsalException) {
                result.error(
                    "NO_ACCOUNT",
                    "No single account is available to acquire token silently for",
                    exception
                )
            }

        })
    }
}

