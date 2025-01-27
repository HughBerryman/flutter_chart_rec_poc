import 'package:intl/intl.dart' as intl;

import 'fmi_core_localizations.dart';

/// The translations for Dutch Flemish (`nl`).
class FmiCoreLocalizationsNl extends FmiCoreLocalizations {
  FmiCoreLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get searchTerm => 'Zoeken op term...';

  @override
  String get searchStart => 'Begin met zoeken';

  @override
  String get save => 'Opslaan';

  @override
  String get cancel => 'Annuleren';

  @override
  String get dismiss => 'Ontslaan';

  @override
  String get okay => 'Oké';

  @override
  String get searchEmployee => 'Medewerker zoeken';

  @override
  String get searchEmployees => 'Medewerker(s) zoeken';

  @override
  String get validating => 'Valideren...';

  @override
  String get inspectedBy => 'Geïnspecteerd door';

  @override
  String get offline => 'Offline';

  @override
  String get youAreOffline => 'Je bent offline';

  @override
  String get youAreBackOnline => 'Je bent weer online';

  @override
  String get pastDue => 'Verlopen';

  @override
  String get dueToday => 'Vandaag verlopen';

  @override
  String dueInDays(num numOfDays) {
    final intl.NumberFormat numOfDaysNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfDaysString = numOfDaysNumberFormat.format(numOfDays);

    String _temp0 = intl.Intl.pluralLogic(
      numOfDays,
      locale: localeName,
      other: '$numOfDaysString Dagen',
      one: '1 dag',
      zero: '0 dag',
    );
    return 'Wegens $_temp0';
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
    return '$_temp0 Achterstallig';
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
      other: '$numOfDaysString dagen',
      one: '1 dag',
      zero: 'day',
    );
    return '$numOfDaysString $_temp0 geleden';
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
      other: '$numOfHoursString uur',
      one: '1 uur',
      zero: 'hour',
    );
    return '$numOfHoursString $_temp0 geleden';
  }

  @override
  String hoursAgoAbbreviated(num numOfHours) {
    final intl.NumberFormat numOfHoursNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfHoursString = numOfHoursNumberFormat.format(numOfHours);

    return '$numOfHoursString uur (s) geleden';
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
      other: '$numOfMinutesString minuut',
      one: '1 minuut',
      zero: '0 minuut',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoAbbreviated(num numOfMinutes) {
    final intl.NumberFormat numOfMinutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfMinutesString = numOfMinutesNumberFormat.format(numOfMinutes);

    return '$numOfMinutesString min(s) geleden';
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
      other: '$numOfSecondsString seconden',
      one: '1 second',
      zero: 'second',
    );
    return '$_temp0 geleden';
  }

  @override
  String secondsAgoAbbreviated(num numOfSeconds) {
    final intl.NumberFormat numOfSecondsNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfSecondsString = numOfSecondsNumberFormat.format(numOfSeconds);

    return '$numOfSecondsString sec(s) geleden';
  }

  @override
  String get justNow => 'daarnet';

  @override
  String get attach => 'Vastmaken';

  @override
  String get equipmentNumber => 'Uitrusting nummer';

  @override
  String get scanNotValid => 'Scan niet geldig';

  @override
  String get clear => 'Duidelijk';

  @override
  String get done => 'Klaar';

  @override
  String get signHere => 'Teken hier';

  @override
  String get target => 'Doel';

  @override
  String get search => 'Zoeken';

  @override
  String get unknown => 'Onbekend';

  @override
  String get addEmployee => 'Medewerker(s) toevoegen';

  @override
  String get inputValue => 'Invoerwaarde(n)';

  @override
  String get addItem => 'Item(s) toevoegen';

  @override
  String get inputPhoneNumber => 'Telefoonnummer invoeren';

  @override
  String get invalidPhoneNumber => 'Ongeldig telefoonnummer';

  @override
  String get signature => 'Handtekening';

  @override
  String get signatureRequired => 'Handtekening vereist';

  @override
  String get signedAt => 'ondertekend op';

  @override
  String get submit => 'Opslaan';

  @override
  String get comment => 'Commentaar';

  @override
  String get allCaughtUp => 'Je bent helemaal bijgepraat!';

  @override
  String get viewAll => 'Bekijk alles';

  @override
  String get tasks => 'Taken';

  @override
  String get tapped => 'Tikte';

  @override
  String get placeholder => 'Tijdelijke aanduiding';

  @override
  String get ok => 'OK';

  @override
  String get sample => 'Monster';

  @override
  String get howWasYourDay => 'Hoe was je dag?';

  @override
  String get noResultFound => 'Geen resultaten gevonden.';

  @override
  String get popular => 'Populair';

  @override
  String get recent => 'Recent';

  @override
  String get noRecentResults => 'Geen recente zoekresultaten.';

  @override
  String get clickHere => 'Klik hier';

  @override
  String get searchKnowledgeBase => ' om onze Knowledge Base te doorzoeken.';

  @override
  String get results => 'Resultaten';

  @override
  String get noResults => 'Geen resultaten';

  @override
  String get networkDisconnected => 'De verbinding met het netwerk is verbroken of niet beschikbaar.';

  @override
  String get noFavorites => 'Geen favorieten';

  @override
  String get apps => 'Apps';

  @override
  String get forms => 'Formulieren';

  @override
  String get camera => 'Camera';

  @override
  String get gallery => 'Galerie';

  @override
  String get files => 'Archief';

  @override
  String get cameraErrorTitle => 'Kan de camera niet openen';

  @override
  String get cameraError => 'Probeer het opnieuw of open het op een ander apparaat';

  @override
  String get searchItem => 'Objecten zoeken...';

  @override
  String get loadMore => 'Meer laden';

  @override
  String get location => 'Plaats';

  @override
  String get modifyLocation => 'Locatie wijzigen';

  @override
  String get viewLocation => 'Bekijk locatie';

  @override
  String get offlineUpdateLocationMessage => 'Netwerkverbinding vereist om locatie bij te werken';

  @override
  String get offlineViewLocationMessage => 'Netwerkverbinding vereist om locatie te bekijken';

  @override
  String get connectNetwork => 'Probeer opnieuw verbinding te maken met uw wifi- of mobiele netwerk';

  @override
  String get showMoreResults => 'Toon meer resultaten';

  @override
  String get showLessResults => 'Minder resultaten tonen';

  @override
  String get employeeNotFound => 'Medewerker niet gevonden';

  @override
  String get networkError => 'Er is een fout opgetreden bij het ophalen van deze informatie, zorg ervoor dat u bent verbonden met internet en probeer het opnieuw.';

  @override
  String get copied => 'Gekopieerd';
}
