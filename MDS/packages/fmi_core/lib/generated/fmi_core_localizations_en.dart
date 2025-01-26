import 'package:intl/intl.dart' as intl;

import 'fmi_core_localizations.dart';

/// The translations for English (`en`).
class FmiCoreLocalizationsEn extends FmiCoreLocalizations {
  FmiCoreLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get searchTerm => 'Search by term...';

  @override
  String get searchStart => 'Start Searching';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get dismiss => 'Dismiss';

  @override
  String get okay => 'Okay';

  @override
  String get searchEmployee => 'Search Employee';

  @override
  String get searchEmployees => 'Search Employee(s)';

  @override
  String get validating => 'Validating...';

  @override
  String get inspectedBy => 'Inspected By';

  @override
  String get offline => 'Offline';

  @override
  String get youAreOffline => 'You\'re Offline';

  @override
  String get youAreBackOnline => 'You\'re back online';

  @override
  String get pastDue => 'Past Due';

  @override
  String get dueToday => 'Due Today';

  @override
  String dueInDays(num numOfDays) {
    final intl.NumberFormat numOfDaysNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfDaysString = numOfDaysNumberFormat.format(numOfDays);

    String _temp0 = intl.Intl.pluralLogic(
      numOfDays,
      locale: localeName,
      other: '$numOfDaysString days',
      one: '1 day',
      zero: '0 day',
    );
    return 'Due in $_temp0';
  }

  @override
  String daysPastDue(num numOfDays) {
    final intl.NumberFormat numOfDaysNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfDaysString = numOfDaysNumberFormat.format(numOfDays);

    String _temp0 = intl.Intl.pluralLogic(
      numOfDays,
      locale: localeName,
      other: '$numOfDaysString Days',
      one: '1 Day',
      zero: '0 Day',
    );
    return '$_temp0 Past Due';
  }

  @override
  String daysAgo(num numOfDays) {
    final intl.NumberFormat numOfDaysNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfDaysString = numOfDaysNumberFormat.format(numOfDays);

    String _temp0 = intl.Intl.pluralLogic(
      numOfDays,
      locale: localeName,
      other: '$numOfDaysString days',
      one: '1 day',
      zero: 'day',
    );
    return '$_temp0 ago';
  }

  @override
  String hoursAgo(num numOfHours) {
    final intl.NumberFormat numOfHoursNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfHoursString = numOfHoursNumberFormat.format(numOfHours);

    String _temp0 = intl.Intl.pluralLogic(
      numOfHours,
      locale: localeName,
      other: '$numOfHoursString hours',
      one: '1 hour',
      zero: 'hour',
    );
    return '$_temp0 ago';
  }

  @override
  String hoursAgoAbbreviated(num numOfHours) {
    final intl.NumberFormat numOfHoursNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfHoursString = numOfHoursNumberFormat.format(numOfHours);

    return '$numOfHoursString hr(s) ago';
  }

  @override
  String minutesAgo(num numOfMinutes) {
    final intl.NumberFormat numOfMinutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfMinutesString = numOfMinutesNumberFormat.format(numOfMinutes);

    String _temp0 = intl.Intl.pluralLogic(
      numOfMinutes,
      locale: localeName,
      other: '$numOfMinutesString minutes',
      one: '1 minute',
      zero: 'minute',
    );
    return '$_temp0 ago';
  }

  @override
  String minutesAgoAbbreviated(num numOfMinutes) {
    final intl.NumberFormat numOfMinutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfMinutesString = numOfMinutesNumberFormat.format(numOfMinutes);

    return '$numOfMinutesString min(s) ago';
  }

  @override
  String secondsAgo(num numOfSeconds) {
    final intl.NumberFormat numOfSecondsNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfSecondsString = numOfSecondsNumberFormat.format(numOfSeconds);

    String _temp0 = intl.Intl.pluralLogic(
      numOfSeconds,
      locale: localeName,
      other: '$numOfSecondsString seconds',
      one: '1 second',
      zero: 'second',
    );
    return '$_temp0 ago';
  }

  @override
  String secondsAgoAbbreviated(num numOfSeconds) {
    final intl.NumberFormat numOfSecondsNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfSecondsString = numOfSecondsNumberFormat.format(numOfSeconds);

    return '$numOfSecondsString sec(s) ago';
  }

  @override
  String get justNow => 'just now';

  @override
  String get attach => 'Attach';

  @override
  String get equipmentNumber => 'Equipment Number';

  @override
  String get scanNotValid => 'Scan not valid';

  @override
  String get clear => 'Clear';

  @override
  String get done => 'Done';

  @override
  String get signHere => 'Sign Here';

  @override
  String get target => 'Target';

  @override
  String get search => 'Search';

  @override
  String get unknown => 'Unknown';

  @override
  String get addEmployee => 'Add Employee(s)';

  @override
  String get inputValue => 'Input Value(s)';

  @override
  String get addItem => 'Add Item(s)';

  @override
  String get inputPhoneNumber => 'Input phone number';

  @override
  String get invalidPhoneNumber => 'Invalid phone number';

  @override
  String get signature => 'Signature';

  @override
  String get signatureRequired => 'Signature Required';

  @override
  String get signedAt => 'signed at';

  @override
  String get submit => 'Submit';

  @override
  String get comment => 'Comment';

  @override
  String get allCaughtUp => 'You\'re all caught up!';

  @override
  String get viewAll => 'View All';

  @override
  String get tasks => 'Tasks';

  @override
  String get tapped => 'Tapped';

  @override
  String get placeholder => 'Placeholder';

  @override
  String get ok => 'OK';

  @override
  String get sample => 'Sample';

  @override
  String get howWasYourDay => 'How was your day?';

  @override
  String get noResultFound => 'No results found.';

  @override
  String get popular => 'Popular';

  @override
  String get recent => 'Recent';

  @override
  String get noRecentResults => 'No recent search results.';

  @override
  String get clickHere => 'Click Here';

  @override
  String get searchKnowledgeBase => ' to search our Knowledge Base.';

  @override
  String get results => 'Results';

  @override
  String get noResults => 'No Results';

  @override
  String get networkDisconnected => 'Network is disconnected or unavailable.';

  @override
  String get noFavorites => 'No Favorites';

  @override
  String get apps => 'Apps';

  @override
  String get forms => 'Forms';

  @override
  String get camera => 'Camera';

  @override
  String get gallery => 'Gallery';

  @override
  String get files => 'Files';

  @override
  String get cameraErrorTitle => 'Could Not Open the Camera';

  @override
  String get cameraError => 'Please try again or open on another device';

  @override
  String get searchItem => 'Search Items...';

  @override
  String get loadMore => 'Load More';

  @override
  String get location => 'Location';

  @override
  String get modifyLocation => 'Modify Location';

  @override
  String get viewLocation => 'View Location';

  @override
  String get offlineUpdateLocationMessage => 'Network connection required to update location';

  @override
  String get offlineViewLocationMessage => 'Network connection required to view location';

  @override
  String get connectNetwork => 'Please try to reconnect to your WiFi or Cellular network';

  @override
  String get showMoreResults => 'Show More Results';

  @override
  String get showLessResults => 'Show Less Results';

  @override
  String get employeeNotFound => 'Employee Not Found';

  @override
  String get networkError => 'There was an error retrieving this information, please make sure you are connected to the internet and try again.';

  @override
  String get copied => 'Copied';
}
