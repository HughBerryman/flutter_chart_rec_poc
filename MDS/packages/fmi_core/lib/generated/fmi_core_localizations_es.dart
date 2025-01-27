import 'package:intl/intl.dart' as intl;

import 'fmi_core_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class FmiCoreLocalizationsEs extends FmiCoreLocalizations {
  FmiCoreLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get searchTerm => 'Buscar por término...';

  @override
  String get searchStart => 'Comenzar a buscar';

  @override
  String get save => 'Guardar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get dismiss => 'Descartar';

  @override
  String get okay => 'Ok';

  @override
  String get searchEmployee => 'Buscar Persona';

  @override
  String get searchEmployees => 'Buscar Persona(s)';

  @override
  String get validating => 'Validando…';

  @override
  String get inspectedBy => 'Inspeccionado por';

  @override
  String get offline => 'Offline';

  @override
  String get youAreOffline => 'Estás en modo Offline';

  @override
  String get youAreBackOnline => 'Conexión reestablecida';

  @override
  String get pastDue => 'Vencido';

  @override
  String get dueToday => 'Vence hoy';

  @override
  String dueInDays(num numOfDays) {
    final intl.NumberFormat numOfDaysNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfDaysString = numOfDaysNumberFormat.format(numOfDays);

    String _temp0 = intl.Intl.pluralLogic(
      numOfDays,
      locale: localeName,
      other: '$numOfDaysString días',
      one: '1 día',
      zero: '0 días',
    );
    return 'Vence en $_temp0';
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
      other: '$numOfDaysString Días',
      one: '1 Día',
      zero: '0 Días',
    );
    return '$_temp0 De Atraso';
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
      other: '$numOfDaysString días',
      one: '1 día',
      zero: '0 días',
    );
    return 'Hace $_temp0';
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
      other: '$numOfHoursString horas',
      one: '1 hora',
      zero: '0 horas',
    );
    return 'Hace $_temp0';
  }

  @override
  String hoursAgoAbbreviated(num numOfHours) {
    final intl.NumberFormat numOfHoursNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfHoursString = numOfHoursNumberFormat.format(numOfHours);

    return 'Hace $numOfHoursString hr(s)';
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
      other: '$numOfMinutesString minutos',
      one: '1 minuto',
      zero: '0 minutos',
    );
    return 'Hace $_temp0';
  }

  @override
  String minutesAgoAbbreviated(num numOfMinutes) {
    final intl.NumberFormat numOfMinutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfMinutesString = numOfMinutesNumberFormat.format(numOfMinutes);

    return 'Hace $numOfMinutesString min(s)';
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
      other: '$numOfSecondsString segundos',
      one: '1 segundo',
      zero: '0 segundos',
    );
    return 'Hace $_temp0';
  }

  @override
  String secondsAgoAbbreviated(num numOfSeconds) {
    final intl.NumberFormat numOfSecondsNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfSecondsString = numOfSecondsNumberFormat.format(numOfSeconds);

    return 'Hace $numOfSecondsString seg(s)';
  }

  @override
  String get justNow => 'justo ahora';

  @override
  String get attach => 'Adjuntar';

  @override
  String get equipmentNumber => 'Número de Equipo';

  @override
  String get scanNotValid => 'Escaneo inválido';

  @override
  String get clear => 'Borrar';

  @override
  String get done => 'Hecho';

  @override
  String get signHere => 'Firme aquí';

  @override
  String get target => 'Objetivo';

  @override
  String get search => 'Buscar';

  @override
  String get unknown => 'Desconocido';

  @override
  String get addEmployee => 'Añadir Persona(s)';

  @override
  String get inputValue => 'Valor(es) de entrada';

  @override
  String get addItem => 'Añadir Elementos(s)';

  @override
  String get inputPhoneNumber => 'Añadir número de teléfono';

  @override
  String get invalidPhoneNumber => 'Número de teléfono inválido';

  @override
  String get signature => 'Firma';

  @override
  String get signatureRequired => 'Firma Obligatoria';

  @override
  String get signedAt => 'firmado el';

  @override
  String get submit => 'Enviar';

  @override
  String get comment => 'Comentar';

  @override
  String get allCaughtUp => '¡Estás al día!';

  @override
  String get viewAll => 'Ver Todo';

  @override
  String get tasks => 'Tareas';

  @override
  String get tapped => 'Realizado';

  @override
  String get placeholder => 'Placeholder';

  @override
  String get ok => 'OK';

  @override
  String get sample => 'Ejemplo';

  @override
  String get howWasYourDay => '¿Cómo fue tu día?';

  @override
  String get noResultFound => 'No se encontraron resultados.';

  @override
  String get popular => 'Popular';

  @override
  String get recent => 'Reciente';

  @override
  String get noRecentResults => 'Sin resultados de búsqueda recientes.';

  @override
  String get clickHere => 'Haz clic aquí';

  @override
  String get searchKnowledgeBase => ' para buscar en nuestra Base de Conocimientos.';

  @override
  String get results => 'Resultados';

  @override
  String get noResults => 'Sin Resultados';

  @override
  String get networkDisconnected => 'La red está desconectada o no está disponible.';

  @override
  String get noFavorites => 'Sin Favoritos';

  @override
  String get apps => 'Aplicaciones';

  @override
  String get forms => 'Formularios';

  @override
  String get camera => 'Cámara';

  @override
  String get gallery => 'Galería';

  @override
  String get files => 'Archivos';

  @override
  String get cameraErrorTitle => 'No se pudo abrir la cámara';

  @override
  String get cameraError => 'Inténtalo de nuevo o ábrelo en otro dispositivo';

  @override
  String get searchItem => 'Buscar elementos...';

  @override
  String get loadMore => 'Carga más';

  @override
  String get location => 'Ubicación';

  @override
  String get modifyLocation => 'Modificar Ubicación';

  @override
  String get viewLocation => 'Ver Ubicación';

  @override
  String get offlineUpdateLocationMessage => 'Se requiere conexión de red para actualizar la ubicación';

  @override
  String get offlineViewLocationMessage => 'Se requiere conexión de red para ver la ubicación';

  @override
  String get connectNetwork => 'Por favor, intenta conectarte a una red WiFi o usar los datos móviles del dispositivo';

  @override
  String get showMoreResults => 'Mostrar más resultados';

  @override
  String get showLessResults => 'Mostrar menos resultados';

  @override
  String get employeeNotFound => 'Empleada no encontrado';

  @override
  String get networkError => 'Hubo un error al recuperar esta información, asegúrese de estar conectado a Internet y vuelva a intentarlo.';

  @override
  String get copied => 'Copiado';
}

/// The translations for Spanish Castilian, as used in Chile (`es_CL`).
class FmiCoreLocalizationsEsCl extends FmiCoreLocalizationsEs {
  FmiCoreLocalizationsEsCl(): super('es_CL');

  @override
  String get searchTerm => 'Buscar por término...';

  @override
  String get searchStart => 'Comenzar a buscar';

  @override
  String get save => 'Guardar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get dismiss => 'Descartar';

  @override
  String get okay => 'Ok';

  @override
  String get searchEmployee => 'Buscar Persona';

  @override
  String get searchEmployees => 'Buscar Persona(s)';

  @override
  String get validating => 'Validando…';

  @override
  String get inspectedBy => 'Inspeccionado por';

  @override
  String get offline => 'Offline';

  @override
  String get youAreOffline => 'Estás en modo Offline';

  @override
  String get youAreBackOnline => 'Conexión reestablecida';

  @override
  String get pastDue => 'Vencido';

  @override
  String get dueToday => 'Vence hoy';

  @override
  String dueInDays(num numOfDays) {
    final intl.NumberFormat numOfDaysNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfDaysString = numOfDaysNumberFormat.format(numOfDays);

    String _temp0 = intl.Intl.pluralLogic(
      numOfDays,
      locale: localeName,
      other: '$numOfDaysString días',
      one: '1 día',
      zero: '0 días',
    );
    return 'Vence en $_temp0';
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
      other: '$numOfDaysString Días',
      one: '1 Día',
      zero: '0 Días',
    );
    return '$_temp0 De Atraso';
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
      other: '$numOfDaysString días',
      one: '1 día',
      zero: '0 días',
    );
    return 'Hace $_temp0';
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
      other: '$numOfHoursString horas',
      one: '1 hora',
      zero: '0 horas',
    );
    return 'Hace $_temp0';
  }

  @override
  String hoursAgoAbbreviated(num numOfHours) {
    final intl.NumberFormat numOfHoursNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfHoursString = numOfHoursNumberFormat.format(numOfHours);

    return 'Hace $numOfHoursString hr(s)';
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
      other: '$numOfMinutesString minutos',
      one: '1 minuto',
      zero: '0 minutos',
    );
    return 'Hace $_temp0';
  }

  @override
  String minutesAgoAbbreviated(num numOfMinutes) {
    final intl.NumberFormat numOfMinutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfMinutesString = numOfMinutesNumberFormat.format(numOfMinutes);

    return 'Hace $numOfMinutesString min(s)';
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
      other: '$numOfSecondsString segundos',
      one: '1 segundo',
      zero: '0 segundos',
    );
    return 'Hace $_temp0';
  }

  @override
  String secondsAgoAbbreviated(num numOfSeconds) {
    final intl.NumberFormat numOfSecondsNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfSecondsString = numOfSecondsNumberFormat.format(numOfSeconds);

    return 'Hace $numOfSecondsString seg(s)';
  }

  @override
  String get justNow => 'en este momento';

  @override
  String get attach => 'Adjuntar';

  @override
  String get equipmentNumber => 'Número de Equipo';

  @override
  String get scanNotValid => 'Escaneo inválido';

  @override
  String get clear => 'Limpiar';

  @override
  String get done => 'Listo';

  @override
  String get signHere => 'Firme aquí';

  @override
  String get target => 'Objetivo';

  @override
  String get search => 'Buscar';

  @override
  String get unknown => 'Desconocido';

  @override
  String get addEmployee => 'Añadir Persona(s)';

  @override
  String get inputValue => 'Valor(es) de entrada';

  @override
  String get addItem => 'Añadir Elementos(s)';

  @override
  String get inputPhoneNumber => 'Ingresar número de teléfono';

  @override
  String get invalidPhoneNumber => 'Número de teléfono inválido';

  @override
  String get signature => 'Firma';

  @override
  String get signatureRequired => 'Firma Obligatoria';

  @override
  String get signedAt => 'firmado el';

  @override
  String get submit => 'Enviar';

  @override
  String get comment => 'Comentar';

  @override
  String get allCaughtUp => '¡Estás al día!';

  @override
  String get viewAll => 'Ver Todo';

  @override
  String get tasks => 'Tareas';

  @override
  String get tapped => 'Realizado';

  @override
  String get placeholder => 'Placeholder';

  @override
  String get ok => 'OK';

  @override
  String get sample => 'Muestra';

  @override
  String get howWasYourDay => '¿Cómo estuvo tu día?';

  @override
  String get noResultFound => 'No se encontraron resultados.';

  @override
  String get popular => 'Popular';

  @override
  String get recent => 'Reciente';

  @override
  String get noRecentResults => 'Sin resultados recientes de búsqueda.';

  @override
  String get clickHere => 'Haz clic aquí';

  @override
  String get searchKnowledgeBase => ' para buscar en nuestra Base de Conocimientos.';

  @override
  String get results => 'Resultados';

  @override
  String get noResults => 'Sin Resultados';

  @override
  String get networkDisconnected => 'La red está desconectada o no está disponible.';

  @override
  String get noFavorites => 'Sin Favoritos';

  @override
  String get apps => 'Aplicaciones';

  @override
  String get forms => 'Formularios';

  @override
  String get camera => 'Cámara';

  @override
  String get gallery => 'Galería';

  @override
  String get files => 'Archivos';

  @override
  String get cameraErrorTitle => 'No se pudo abrir la cámara';

  @override
  String get cameraError => 'Inténtalo de nuevo o ábrelo en otro dispositivo';

  @override
  String get searchItem => 'Buscar elementos...';

  @override
  String get loadMore => 'Carga más';

  @override
  String get location => 'Ubicación';

  @override
  String get modifyLocation => 'Modificar Ubicación';

  @override
  String get viewLocation => 'Ver Ubicación';

  @override
  String get offlineUpdateLocationMessage => 'Se requiere conexión de red para actualizar la ubicación';

  @override
  String get offlineViewLocationMessage => 'Se requiere conexión de red para ver la ubicación';

  @override
  String get connectNetwork => 'Por favor, intenta conectarte a una red WiFi o usar los datos móviles del dispositivo';

  @override
  String get showMoreResults => 'Mostrar más resultados';

  @override
  String get showLessResults => 'Mostrar menos resultados';

  @override
  String get employeeNotFound => 'Empleada no encontrado';

  @override
  String get networkError => 'Hubo un error al recuperar esta información, asegúrese de estar conectado a Internet y vuelva a intentarlo.';

  @override
  String get copied => 'Copiado';
}

/// The translations for Spanish Castilian, as used in Peru (`es_PE`).
class FmiCoreLocalizationsEsPe extends FmiCoreLocalizationsEs {
  FmiCoreLocalizationsEsPe(): super('es_PE');

  @override
  String get searchTerm => 'Buscar por término...';

  @override
  String get searchStart => 'Comenzar a buscar';

  @override
  String get save => 'Guardar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get dismiss => 'Descartar';

  @override
  String get okay => 'Ok';

  @override
  String get searchEmployee => 'Buscar Persona';

  @override
  String get searchEmployees => 'Buscar Persona(s)';

  @override
  String get validating => 'Validando…';

  @override
  String get inspectedBy => 'Inspeccionado por';

  @override
  String get offline => 'Offline';

  @override
  String get youAreOffline => 'Estás en modo Offline';

  @override
  String get youAreBackOnline => 'Conexión reestablecida';

  @override
  String get pastDue => 'Vencido';

  @override
  String get dueToday => 'Vence hoy';

  @override
  String dueInDays(num numOfDays) {
    final intl.NumberFormat numOfDaysNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfDaysString = numOfDaysNumberFormat.format(numOfDays);

    String _temp0 = intl.Intl.pluralLogic(
      numOfDays,
      locale: localeName,
      other: '$numOfDaysString días',
      one: '1 día',
      zero: '0 días',
    );
    return 'Vence en $_temp0';
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
      other: '$numOfDaysString Días',
      one: '1 Día',
      zero: '0 Días',
    );
    return '$_temp0 de atraso';
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
      other: '$numOfDaysString días',
      one: '1 día',
      zero: '0 días',
    );
    return 'Hace $_temp0';
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
      other: '$numOfHoursString horas',
      one: '1 hora',
      zero: '0 horas',
    );
    return 'Hace $_temp0';
  }

  @override
  String hoursAgoAbbreviated(num numOfHours) {
    final intl.NumberFormat numOfHoursNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfHoursString = numOfHoursNumberFormat.format(numOfHours);

    return 'Hace $numOfHoursString hr(s)';
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
      other: '$numOfMinutesString minutos',
      one: '1 minuto',
      zero: '0 minutos',
    );
    return 'Hace $_temp0';
  }

  @override
  String minutesAgoAbbreviated(num numOfMinutes) {
    final intl.NumberFormat numOfMinutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfMinutesString = numOfMinutesNumberFormat.format(numOfMinutes);

    return 'Hace $numOfMinutesString min(s)';
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
      other: '$numOfSecondsString segundos',
      one: '1 segundo',
      zero: '0 segundos',
    );
    return 'Hace $_temp0';
  }

  @override
  String secondsAgoAbbreviated(num numOfSeconds) {
    final intl.NumberFormat numOfSecondsNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfSecondsString = numOfSecondsNumberFormat.format(numOfSeconds);

    return 'Hace $numOfSecondsString seg(s)';
  }

  @override
  String get justNow => 'justo ahora';

  @override
  String get attach => 'Adjuntar';

  @override
  String get equipmentNumber => 'Número de Equipo';

  @override
  String get scanNotValid => 'Escaneo inválido';

  @override
  String get clear => 'Limpiar';

  @override
  String get done => 'Realizado';

  @override
  String get signHere => 'Firmar aquí';

  @override
  String get target => 'Objetivo';

  @override
  String get search => 'Buscar';

  @override
  String get unknown => 'Desconocido';

  @override
  String get addEmployee => 'Añadir Persona(s)';

  @override
  String get inputValue => 'Valor(es) de entrada';

  @override
  String get addItem => 'Añadir Elementos(s)';

  @override
  String get inputPhoneNumber => 'Ingresar número de teléfono';

  @override
  String get invalidPhoneNumber => 'Número de teléfono inválido';

  @override
  String get signature => 'Firma';

  @override
  String get signatureRequired => 'Firma Obligatoria';

  @override
  String get signedAt => 'firmado el';

  @override
  String get submit => 'Enviar';

  @override
  String get comment => 'Comentar';

  @override
  String get allCaughtUp => '¡Estás al día!';

  @override
  String get viewAll => 'Ver Todo';

  @override
  String get tasks => 'Tareas';

  @override
  String get tapped => 'Realizado';

  @override
  String get placeholder => 'Placeholder';

  @override
  String get ok => 'OK';

  @override
  String get sample => 'Muestra';

  @override
  String get howWasYourDay => '¿Cómo estuvo tu día?';

  @override
  String get noResultFound => 'No se encontraron resultados.';

  @override
  String get popular => 'Popular';

  @override
  String get recent => 'Reciente';

  @override
  String get noRecentResults => 'Sin resultados recientes de búsqueda.';

  @override
  String get clickHere => 'Haz clic aquí';

  @override
  String get searchKnowledgeBase => ' para buscar en nuestra Base de Conocimientos.';

  @override
  String get results => 'Resultados';

  @override
  String get noResults => 'Sin resultados';

  @override
  String get networkDisconnected => 'No tiene conexión a red o no está disponible.';

  @override
  String get noFavorites => 'Sin favoritos';

  @override
  String get apps => 'Aplicaciones';

  @override
  String get forms => 'Formularios';

  @override
  String get camera => 'Cámara';

  @override
  String get gallery => 'Galería';

  @override
  String get files => 'Archivos';

  @override
  String get cameraErrorTitle => 'No se pudo abrir la cámara';

  @override
  String get cameraError => 'Inténtalo de nuevo o ábrelo en otro dispositivo';

  @override
  String get searchItem => 'Buscar elementos...';

  @override
  String get loadMore => 'Cargar información adicional';

  @override
  String get location => 'Ubicación';

  @override
  String get modifyLocation => 'Modificar Ubicación';

  @override
  String get viewLocation => 'Ver Ubicación';

  @override
  String get offlineUpdateLocationMessage => 'Se requiere conexión de red para actualizar la ubicación';

  @override
  String get offlineViewLocationMessage => 'Se requiere conexión de red para ver la ubicación';

  @override
  String get connectNetwork => 'Por favor, intenta conectarte a una red WiFi o usar los datos móviles del dispositivo';

  @override
  String get showMoreResults => 'Mostrar más resultados';

  @override
  String get showLessResults => 'Mostrar menos resultados';

  @override
  String get employeeNotFound => 'Persona no encontrada';

  @override
  String get networkError => 'Hubo un error al recuperar esta información, asegúrese de estar conectado a Internet y vuelva a intentarlo.';

  @override
  String get copied => 'Copiado';
}
