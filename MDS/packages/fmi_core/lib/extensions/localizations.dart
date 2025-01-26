import 'package:flutter/cupertino.dart';
import '../generated/fmi_core_localizations.dart' as localization;
import '../generated/fmi_core_localizations_en.dart' as en_localization;

abstract class FmiCoreLocalizations {
  static const LocalizationsDelegate<localization.FmiCoreLocalizations>
      delegate = localization.FmiCoreLocalizations.delegate;
}

localization.FmiCoreLocalizations coreLocalize(BuildContext? context) {
  if (context != null) {
    return context.coreLocalize;
  } else {
    return en_localization.FmiCoreLocalizationsEn();
  }
}

extension BuildContextLocalizationExtension on BuildContext {
  localization.FmiCoreLocalizations get coreLocalize {
    var appLocalize = localization.FmiCoreLocalizations.of(this);
    if (appLocalize != null) {
      return appLocalize;
    } else {
      return en_localization.FmiCoreLocalizationsEn();
    }
  }
}
