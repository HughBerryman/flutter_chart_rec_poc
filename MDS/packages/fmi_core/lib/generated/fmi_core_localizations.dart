import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'fmi_core_localizations_en.dart';
import 'fmi_core_localizations_es.dart';
import 'fmi_core_localizations_id.dart';
import 'fmi_core_localizations_nl.dart';

/// Callers can lookup localized strings with an instance of FmiCoreLocalizations
/// returned by `FmiCoreLocalizations.of(context)`.
///
/// Applications need to include `FmiCoreLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/fmi_core_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FmiCoreLocalizations.localizationsDelegates,
///   supportedLocales: FmiCoreLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the FmiCoreLocalizations.supportedLocales
/// property.
abstract class FmiCoreLocalizations {
  FmiCoreLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FmiCoreLocalizations? of(BuildContext context) {
    return Localizations.of<FmiCoreLocalizations>(context, FmiCoreLocalizations);
  }

  static const LocalizationsDelegate<FmiCoreLocalizations> delegate = _FmiCoreLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es', 'CL'),
    Locale('es', 'PE'),
    Locale('es'),
    Locale('id'),
    Locale('nl')
  ];

  /// No description provided for @searchTerm.
  ///
  /// In en, this message translates to:
  /// **'Search by term...'**
  String get searchTerm;

  /// No description provided for @searchStart.
  ///
  /// In en, this message translates to:
  /// **'Start Searching'**
  String get searchStart;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @dismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss;

  /// No description provided for @okay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get okay;

  /// No description provided for @searchEmployee.
  ///
  /// In en, this message translates to:
  /// **'Search Employee'**
  String get searchEmployee;

  /// No description provided for @searchEmployees.
  ///
  /// In en, this message translates to:
  /// **'Search Employee(s)'**
  String get searchEmployees;

  /// No description provided for @validating.
  ///
  /// In en, this message translates to:
  /// **'Validating...'**
  String get validating;

  /// No description provided for @inspectedBy.
  ///
  /// In en, this message translates to:
  /// **'Inspected By'**
  String get inspectedBy;

  /// No description provided for @offline.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get offline;

  /// No description provided for @youAreOffline.
  ///
  /// In en, this message translates to:
  /// **'You\'re Offline'**
  String get youAreOffline;

  /// No description provided for @youAreBackOnline.
  ///
  /// In en, this message translates to:
  /// **'You\'re back online'**
  String get youAreBackOnline;

  /// No description provided for @pastDue.
  ///
  /// In en, this message translates to:
  /// **'Past Due'**
  String get pastDue;

  /// No description provided for @dueToday.
  ///
  /// In en, this message translates to:
  /// **'Due Today'**
  String get dueToday;

  /// Due in x day(s)
  ///
  /// In en, this message translates to:
  /// **'Due in {numOfDays, plural, =0{0 day} =1{1 day} other{{numOfDays} days}}'**
  String dueInDays(num numOfDays);

  /// x day(s) past due
  ///
  /// In en, this message translates to:
  /// **'{numOfDays, plural, =0{0 Day} =1{1 Day} other{{numOfDays} Days}} Past Due'**
  String daysPastDue(num numOfDays);

  /// day(s) ago
  ///
  /// In en, this message translates to:
  /// **'{numOfDays, plural, =0{day} =1{1 day} other{{numOfDays} days}} ago'**
  String daysAgo(num numOfDays);

  /// hour(s) ago
  ///
  /// In en, this message translates to:
  /// **'{numOfHours, plural, =0{hour} =1{1 hour} other{{numOfHours} hours}} ago'**
  String hoursAgo(num numOfHours);

  /// hrs(s) ago
  ///
  /// In en, this message translates to:
  /// **'{numOfHours} hr(s) ago'**
  String hoursAgoAbbreviated(num numOfHours);

  /// minute(s) ago
  ///
  /// In en, this message translates to:
  /// **'{numOfMinutes, plural, =0{minute} =1{1 minute} other{{numOfMinutes} minutes}} ago'**
  String minutesAgo(num numOfMinutes);

  /// min(s) ago
  ///
  /// In en, this message translates to:
  /// **'{numOfMinutes} min(s) ago'**
  String minutesAgoAbbreviated(num numOfMinutes);

  /// second(s) ago
  ///
  /// In en, this message translates to:
  /// **'{numOfSeconds, plural, =0{second} =1{1 second} other{{numOfSeconds} seconds}} ago'**
  String secondsAgo(num numOfSeconds);

  /// sec(s) ago
  ///
  /// In en, this message translates to:
  /// **'{numOfSeconds} sec(s) ago'**
  String secondsAgoAbbreviated(num numOfSeconds);

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'just now'**
  String get justNow;

  /// No description provided for @attach.
  ///
  /// In en, this message translates to:
  /// **'Attach'**
  String get attach;

  /// No description provided for @equipmentNumber.
  ///
  /// In en, this message translates to:
  /// **'Equipment Number'**
  String get equipmentNumber;

  /// No description provided for @scanNotValid.
  ///
  /// In en, this message translates to:
  /// **'Scan not valid'**
  String get scanNotValid;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @signHere.
  ///
  /// In en, this message translates to:
  /// **'Sign Here'**
  String get signHere;

  /// No description provided for @target.
  ///
  /// In en, this message translates to:
  /// **'Target'**
  String get target;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @addEmployee.
  ///
  /// In en, this message translates to:
  /// **'Add Employee(s)'**
  String get addEmployee;

  /// No description provided for @inputValue.
  ///
  /// In en, this message translates to:
  /// **'Input Value(s)'**
  String get inputValue;

  /// No description provided for @addItem.
  ///
  /// In en, this message translates to:
  /// **'Add Item(s)'**
  String get addItem;

  /// No description provided for @inputPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Input phone number'**
  String get inputPhoneNumber;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get invalidPhoneNumber;

  /// No description provided for @signature.
  ///
  /// In en, this message translates to:
  /// **'Signature'**
  String get signature;

  /// No description provided for @signatureRequired.
  ///
  /// In en, this message translates to:
  /// **'Signature Required'**
  String get signatureRequired;

  /// No description provided for @signedAt.
  ///
  /// In en, this message translates to:
  /// **'signed at'**
  String get signedAt;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get comment;

  /// No description provided for @allCaughtUp.
  ///
  /// In en, this message translates to:
  /// **'You\'re all caught up!'**
  String get allCaughtUp;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @tasks.
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get tasks;

  /// No description provided for @tapped.
  ///
  /// In en, this message translates to:
  /// **'Tapped'**
  String get tapped;

  /// No description provided for @placeholder.
  ///
  /// In en, this message translates to:
  /// **'Placeholder'**
  String get placeholder;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @sample.
  ///
  /// In en, this message translates to:
  /// **'Sample'**
  String get sample;

  /// No description provided for @howWasYourDay.
  ///
  /// In en, this message translates to:
  /// **'How was your day?'**
  String get howWasYourDay;

  /// No description provided for @noResultFound.
  ///
  /// In en, this message translates to:
  /// **'No results found.'**
  String get noResultFound;

  /// No description provided for @popular.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popular;

  /// No description provided for @recent.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get recent;

  /// No description provided for @noRecentResults.
  ///
  /// In en, this message translates to:
  /// **'No recent search results.'**
  String get noRecentResults;

  /// No description provided for @clickHere.
  ///
  /// In en, this message translates to:
  /// **'Click Here'**
  String get clickHere;

  /// No description provided for @searchKnowledgeBase.
  ///
  /// In en, this message translates to:
  /// **' to search our Knowledge Base.'**
  String get searchKnowledgeBase;

  /// No description provided for @results.
  ///
  /// In en, this message translates to:
  /// **'Results'**
  String get results;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No Results'**
  String get noResults;

  /// No description provided for @networkDisconnected.
  ///
  /// In en, this message translates to:
  /// **'Network is disconnected or unavailable.'**
  String get networkDisconnected;

  /// No description provided for @noFavorites.
  ///
  /// In en, this message translates to:
  /// **'No Favorites'**
  String get noFavorites;

  /// No description provided for @apps.
  ///
  /// In en, this message translates to:
  /// **'Apps'**
  String get apps;

  /// No description provided for @forms.
  ///
  /// In en, this message translates to:
  /// **'Forms'**
  String get forms;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @files.
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get files;

  /// No description provided for @cameraErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Could Not Open the Camera'**
  String get cameraErrorTitle;

  /// No description provided for @cameraError.
  ///
  /// In en, this message translates to:
  /// **'Please try again or open on another device'**
  String get cameraError;

  /// No description provided for @searchItem.
  ///
  /// In en, this message translates to:
  /// **'Search Items...'**
  String get searchItem;

  /// No description provided for @loadMore.
  ///
  /// In en, this message translates to:
  /// **'Load More'**
  String get loadMore;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @modifyLocation.
  ///
  /// In en, this message translates to:
  /// **'Modify Location'**
  String get modifyLocation;

  /// No description provided for @viewLocation.
  ///
  /// In en, this message translates to:
  /// **'View Location'**
  String get viewLocation;

  /// No description provided for @offlineUpdateLocationMessage.
  ///
  /// In en, this message translates to:
  /// **'Network connection required to update location'**
  String get offlineUpdateLocationMessage;

  /// No description provided for @offlineViewLocationMessage.
  ///
  /// In en, this message translates to:
  /// **'Network connection required to view location'**
  String get offlineViewLocationMessage;

  /// No description provided for @connectNetwork.
  ///
  /// In en, this message translates to:
  /// **'Please try to reconnect to your WiFi or Cellular network'**
  String get connectNetwork;

  /// No description provided for @showMoreResults.
  ///
  /// In en, this message translates to:
  /// **'Show More Results'**
  String get showMoreResults;

  /// No description provided for @showLessResults.
  ///
  /// In en, this message translates to:
  /// **'Show Less Results'**
  String get showLessResults;

  /// No description provided for @employeeNotFound.
  ///
  /// In en, this message translates to:
  /// **'Employee Not Found'**
  String get employeeNotFound;

  /// No description provided for @networkError.
  ///
  /// In en, this message translates to:
  /// **'There was an error retrieving this information, please make sure you are connected to the internet and try again.'**
  String get networkError;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get copied;
}

class _FmiCoreLocalizationsDelegate extends LocalizationsDelegate<FmiCoreLocalizations> {
  const _FmiCoreLocalizationsDelegate();

  @override
  Future<FmiCoreLocalizations> load(Locale locale) {
    return SynchronousFuture<FmiCoreLocalizations>(lookupFmiCoreLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es', 'id', 'nl'].contains(locale.languageCode);

  @override
  bool shouldReload(_FmiCoreLocalizationsDelegate old) => false;
}

FmiCoreLocalizations lookupFmiCoreLocalizations(Locale locale) {

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'es': {
  switch (locale.countryCode) {
    case 'CL': return FmiCoreLocalizationsEsCl();
case 'PE': return FmiCoreLocalizationsEsPe();
   }
  break;
   }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return FmiCoreLocalizationsEn();
    case 'es': return FmiCoreLocalizationsEs();
    case 'id': return FmiCoreLocalizationsId();
    case 'nl': return FmiCoreLocalizationsNl();
  }

  throw FlutterError(
    'FmiCoreLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
