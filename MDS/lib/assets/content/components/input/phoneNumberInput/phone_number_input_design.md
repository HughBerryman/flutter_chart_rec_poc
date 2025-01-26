### Fmi Phone Number Input

##### Usage

Used to retrieve the standarized dial code and auto validate the phone number format.

If you want to use this class in Web platform, it is REQUIRED to add these references below in your /web/index.html file. 
  
  <script src="assets/packages/libphonenumber_plugin/js/libphonenumber.js"></script>
  <script src="assets/packages/libphonenumber_plugin/js/stringbuffer.js"></script>

Reference : https://pub.dev/packages/intl_phone_number_input 

##### Behavior

The initial value and inputted number should be a standardized phone number format. Or else error text will show for invalid input and phone number would not initialize a wrong format.

##### States

* Normal with dial code only
* Normal with existing phone number values
* Error with incorrect phone number values
* Disabled

##### Parameters

* initialValue - PhoneNumber, required
* fieldTitle - String, default 'Input phone number'
* formatInput - bool, default true
* enabled - bool, default true
* errorText - String, default 'Invalid phone number'
* onInputChanged - Function(PhoneNumber), optional
* onInputValidated - Function(bool), optional
* ignoreBlank - bool, default false

##### Models

enum PhoneNumberType
* FIXED_LINE
* MOBILE
* FIXED_LINE_OR_MOBILE
* TOLL_FREE
* PREMIUM_RATE
* SHARED_COST
* VOIP
* PERSONAL_NUMBER
* PAGER
* UAN
* VOICEMAIL
* UNKNOWN

`  `