import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:fmi_core/fmi_core.dart';

///  If you want to use this class in Web platform, it is REQUIRED to add these references below in your /web/index.html file.

///  <script src="assets/packages/libphonenumber_plugin/js/libphonenumber.js"></script>
///  <script src="assets/packages/libphonenumber_plugin/js/stringbuffer.js"></script>

///  Reference : https://pub.dev/packages/intl_phone_number_input
class FmiPhoneNumberInput extends StatefulWidget {
  const FmiPhoneNumberInput(
      {Key? key,
      required this.initialValue,
      this.fieldTitle,
      this.errorText,
      this.onInputChanged,
      this.onInputValidated,
      this.formatInput = true,
      this.enabled = true,
      this.ignoreBlank = false})
      : super(key: key);
  final PhoneNumber initialValue;
  final String? fieldTitle;
  final bool formatInput;
  final bool enabled;
  final String? errorText;
  final Function(PhoneNumber)? onInputChanged;
  final Function(bool)? onInputValidated;
  final bool ignoreBlank;

  @override
  State<FmiPhoneNumberInput> createState() => _FmiPhoneNumberInput();
}

class _FmiPhoneNumberInput extends State<FmiPhoneNumberInput> {
  PhoneNumber _initialValue = PhoneNumber();
  Function(PhoneNumber)? _defaultOnInputChanged;
  TextEditingController? _textFieldController = TextEditingController();
  bool hasError = false;

  @override
  void initState() {
    super.initState();

    asyncInit();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
      child: MouseRegion(
        cursor: widget.enabled
            ? SystemMouseCursors.text
            : SystemMouseCursors.forbidden,
        child: IgnorePointer(
          ignoring: !widget.enabled,
          child: InternationalPhoneNumberInput(
            selectorConfig: SelectorConfig(
                useEmoji: true,
                showFlags: true,
                selectorType: PhoneInputSelectorType.DROPDOWN,
                countryComparator: (country1, country2) {
                  //parse by dial code ascending
                  int country1Number = int.parse(country1.dialCode ?? "0");
                  int country2Number = int.parse(country2.dialCode ?? "0");
                  return (country1Number == country2Number
                      ? 0
                      : country1Number > country2Number
                          ? 1
                          : -1);
                }),
            selectorTextStyle: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.apply(color: Theme.of(context).colorScheme.onSurface),
            inputDecoration: FmiEnhancedInputDecoration(
                label: Text(
                    widget.fieldTitle ?? context.coreLocalize.inputPhoneNumber),
                errorText: getErrorText()),
            textStyle: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.apply(color: Theme.of(context).colorScheme.onSurface),
            formatInput: widget.formatInput,
            isEnabled: widget.enabled,
            errorMessage:
                widget.errorText ?? context.coreLocalize.invalidPhoneNumber,
            autoValidateMode: _getDefaultValidateMode(widget.formatInput),
            textFieldController: _textFieldController,
            initialValue: _initialValue,
            onInputChanged: _defaultOnInputChanged,
            onInputValidated: (isValid) {
              setState(() {
                hasError = !isValid;
              });
              if (widget.onInputValidated != null) {
                widget.onInputValidated!(isValid);
              }
            },
            ignoreBlank: widget.ignoreBlank,
          ),
        ),
      ),
    );
  }

  void asyncInit() async {
    PhoneNumber initialValue = await _getInitialValueAsync(widget.initialValue);

    Function(PhoneNumber)? defaultOnInputChanged =
        _getDefaultOnInputChanged(widget.onInputChanged);

    setState(() {
      _initialValue = initialValue;
      _defaultOnInputChanged = defaultOnInputChanged;
      _setInitialTextEditingValue(initialValue, _textFieldController);
    });
  }

  String? getErrorText() {
    bool isValid = !hasError && _textFieldController!.value.text.isNotEmpty;
    if (_textFieldController!.value.text.isEmpty && widget.ignoreBlank) {
      isValid = true;
    }
    return !isValid ? widget.errorText : null;
  }

  Future<PhoneNumber> _getInitialValueAsync(PhoneNumber phoneNumber) async {
    //To check when input provided dial code only / phone number that contains prefix dial code only
    String prefix = phoneNumber.phoneNumber ?? (phoneNumber.dialCode ?? "");
    String? inputISOCode = PhoneNumber.getISO2CodeByPrefix(prefix);

    if (inputISOCode != null) {
      //then provided input only contains dial code
      return PhoneNumber(
          isoCode: phoneNumber.isoCode ?? inputISOCode,
          dialCode: phoneNumber.dialCode ?? prefix);
    } else {
      return (phoneNumber.dialCode == null && phoneNumber.isoCode == null)
          ? await PhoneNumber.getRegionInfoFromPhoneNumber(
              phoneNumber.phoneNumber ?? "")
          : phoneNumber;
    }
  }

  AutovalidateMode _getDefaultValidateMode(bool formatInput) {
    return formatInput
        ? AutovalidateMode.onUserInteraction
        : AutovalidateMode.disabled;
  }

  void _setInitialTextEditingValue(PhoneNumber initialPhoneNum,
      TextEditingController? _textFieldController) {
    //this will bind initially to textbox as backup when provided initialValue is in wrong format
    if (initialPhoneNum.phoneNumber != null &&
        initialPhoneNum.phoneNumber!.isNotEmpty) {
      String parsed = initialPhoneNum.parseNumber();
      parsed = parsed.substring(1);
      _textFieldController?.value = TextEditingValue(text: parsed);
    }
  }

  Function(PhoneNumber)? _getDefaultOnInputChanged(
      Function(PhoneNumber)? onInputChanged) {
    //because on input changed is required as the plugin's constructor
    return onInputChanged ?? ((phoneNumber) => {});
  }
}
