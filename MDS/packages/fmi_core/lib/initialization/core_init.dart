import 'package:azure_ad_authentication/azure_ad_authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class CoreInit {
  static void registerConnectivityProvider(GetIt instance) {
    InternetConnectivityProviderImpl internetConnectivityProviderImpl =
        InternetConnectivityProviderImpl();
    internetConnectivityProviderImpl.initialize();
    instance.registerSingleton<InternetConnectivityProvider>(
        internetConnectivityProviderImpl);
  }

  static Future init(
      GetIt instance,
      EmployeeRepository employeeRepositoryImplementation,
      AttachmentRepository attachmentRepositoryImplementation,
      Isar isar,
      ConnectedAssetRepository connectedAssetRepositoryImplementation,
      EmployeeOnlineRepository employeeOnlineRepositoryImplementation,
      GenericRepository genericLookupImplementation,
      String clientId,
      String telemetryKey) async {
    // Authentication
    instance.registerSingleton<AzureAdAuthentication>(
        AzureAdAuthentication(clientId: clientId));

    instance.registerSingleton<TelemetryService>(
        TelemetryServiceImpl(telemetryKey: telemetryKey));

    instance.registerLazySingleton<PreferenceService>(
        () => PreferenceServiceImpl());

    // Repositories
    instance.registerSingleton<StagedSyncLocalStorageRepository>(
        StagedSyncLocalStorageRepositoryImpl(isar: isar));
    instance.registerSingleton<FaultedStagedSyncLocalStorageRepository>(
        FaultedStagedSyncLocalStorageRepositoryImpl(isar: isar));
    instance.registerSingleton<SyncDomainMetadataLocalStorageRepository>(
        SyncDomainMetadataLocalStorageRepositoryImpl(isar: isar));

    instance.registerSingleton<EmployeeRepository>(
        employeeRepositoryImplementation);
    instance.registerSingleton<AttachmentRepository>(
        attachmentRepositoryImplementation);
    instance.registerSingleton<ConnectedAssetRepository>(
        connectedAssetRepositoryImplementation);
    instance.registerSingleton<EmployeeOnlineRepository>(
        employeeOnlineRepositoryImplementation);
    instance.registerSingleton<GenericRepository>(genericLookupImplementation);

    instance.registerLazySingleton<SearchedTermRepository>(
        () => SearchedTermRepositoryImpl(isar: isar));

    // Services
    instance.registerLazySingleton<AuthorizationService>(
        () => AuthorizationServiceImpl());
    instance.registerLazySingleton<StagedSyncService>(() =>
        StagedSyncServiceImpl(
            faultedStagedSyncLocalStorageRepository:
                instance.get<FaultedStagedSyncLocalStorageRepository>(),
            stagedSyncLocalStorageRepository:
                instance.get<StagedSyncLocalStorageRepository>()));
    instance
        .registerLazySingleton<EmployeeService>(() => EmployeeServiceImpl());
    instance.registerLazySingleton<AttachmentService>(
        () => AttachmentServiceImpl());
    instance.registerLazySingleton<TokenRetrievalService>(
        () => TokenRetrievalServiceImpl());
    instance.registerLazySingleton<ConnectedAssetService>(
        () => ConnectedAssetServiceImpl());
    instance
        .registerLazySingleton<SnackBarService>(() => SnackBarServiceImpl());
    instance.registerLazySingleton<SyncToastService>(
        () => SyncToastServiceImpl(isar: isar));
    instance
        .registerLazySingleton<LocationService>(() => LocationServiceImpl());
    instance.registerLazySingleton<GenericService>(() => GenericServiceImpl());

    if (!instance.isRegistered<InternetConnectivityProvider>()) {
      registerConnectivityProvider(instance);
    }

    instance.registerLazySingleton<SearchDialogProvider>(
        () => SearchDialogProviderImpl());
  }

  static Future<Isar> isarInit(
      {required List<CollectionSchema> collectionSchemas,
      String? applicationDocumentsDirectoryPath,
      bool enableInspector = false}) async {
    return await Isar.open(
        schemas: collectionSchemas,
        directory: applicationDocumentsDirectoryPath,
        inspector: enableInspector);
  }

  static List<SingleChildWidget> getProviders(BuildContext context) {
    InternetConnectivityProvider internetConnectivityProvider =
        GetIt.instance<InternetConnectivityProvider>();

    return [
      ChangeNotifierProvider(create: (context) => internetConnectivityProvider)
    ];
  }
}
