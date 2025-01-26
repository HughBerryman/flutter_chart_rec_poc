import 'package:intl/intl.dart' as intl;

import 'fmi_core_localizations.dart';

/// The translations for Indonesian (`id`).
class FmiCoreLocalizationsId extends FmiCoreLocalizations {
  FmiCoreLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get searchTerm => 'Telusuri...';

  @override
  String get searchStart => 'Mulai Mencari';

  @override
  String get save => 'Simpan';

  @override
  String get cancel => 'Batal';

  @override
  String get dismiss => 'Batal';

  @override
  String get okay => 'Oke';

  @override
  String get searchEmployee => 'Telusuri';

  @override
  String get searchEmployees => 'Cari Karyawan';

  @override
  String get validating => 'Memvalidasi...';

  @override
  String get inspectedBy => 'Diperiksa Oleh';

  @override
  String get offline => 'Offline';

  @override
  String get youAreOffline => 'Anda sedang offline';

  @override
  String get youAreBackOnline => 'Anda kembali online';

  @override
  String get pastDue => 'Terlambat';

  @override
  String get dueToday => 'Jatuh tempo hari ini';

  @override
  String dueInDays(num numOfDays) {
    final intl.NumberFormat numOfDaysNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfDaysString = numOfDaysNumberFormat.format(numOfDays);

    String _temp0 = intl.Intl.pluralLogic(
      numOfDays,
      locale: localeName,
      other: '$numOfDaysString hari',
      one: '1 hari',
      zero: '0 hari',
    );
    return 'Jatuh tempo dalam $_temp0';
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
      other: '$numOfDaysString Hari',
      one: '1 Hari',
      zero: '0 Hari',
    );
    return '${_temp0}Lewat Jatuh Tempo';
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
      other: '$numOfDaysString hari',
      one: '1 hari',
      zero: 'hari',
    );
    return '$_temp0 yang lalu';
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
      other: '$numOfHoursString jam',
      one: '1 jam',
      zero: 'jam',
    );
    return '$_temp0 yang lalu';
  }

  @override
  String hoursAgoAbbreviated(num numOfHours) {
    final intl.NumberFormat numOfHoursNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfHoursString = numOfHoursNumberFormat.format(numOfHours);

    return '$numOfHoursString jam yang lalu';
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
      other: '$numOfMinutesString menit',
      one: '1 menit',
      zero: 'menit',
    );
    return '$_temp0 lalu';
  }

  @override
  String minutesAgoAbbreviated(num numOfMinutes) {
    final intl.NumberFormat numOfMinutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfMinutesString = numOfMinutesNumberFormat.format(numOfMinutes);

    return '$numOfMinutesString menit lalu';
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
      other: '$numOfSecondsString detik',
      one: '1 detik',
      zero: 'detik',
    );
    return '$_temp0 yang lalu';
  }

  @override
  String secondsAgoAbbreviated(num numOfSeconds) {
    final intl.NumberFormat numOfSecondsNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String numOfSecondsString = numOfSecondsNumberFormat.format(numOfSeconds);

    return '$numOfSecondsString detik yang lalu';
  }

  @override
  String get justNow => 'baru saja';

  @override
  String get attach => 'Lampirkan';

  @override
  String get equipmentNumber => 'Nomer Equipment';

  @override
  String get scanNotValid => 'Pemindaian tidak valid';

  @override
  String get clear => 'Hapus';

  @override
  String get done => 'Selesai';

  @override
  String get signHere => 'Tanda tangani di sini';

  @override
  String get target => 'Sasaran';

  @override
  String get search => 'Mencari';

  @override
  String get unknown => 'Tidak dikenal';

  @override
  String get addEmployee => 'Tambahkan Employee';

  @override
  String get inputValue => 'Masukan Nilai';

  @override
  String get addItem => 'Tambahkan Item';

  @override
  String get inputPhoneNumber => 'Masukkan nomor telepon';

  @override
  String get invalidPhoneNumber => 'Nomor telepon tidak valid';

  @override
  String get signature => 'Tanda tangan';

  @override
  String get signatureRequired => 'Tanda Tangan Diperlukan';

  @override
  String get signedAt => 'ditandatangani';

  @override
  String get submit => 'Kirim';

  @override
  String get comment => 'Komentar';

  @override
  String get allCaughtUp => 'Sudah selesai semua!';

  @override
  String get viewAll => 'Lihat semua';

  @override
  String get tasks => 'Tugas';

  @override
  String get tapped => 'Tapped';

  @override
  String get placeholder => 'Placeholder';

  @override
  String get ok => 'Oke';

  @override
  String get sample => 'Contoh';

  @override
  String get howWasYourDay => 'Apa kabar hari ini?';

  @override
  String get noResultFound => 'Tidak ada hasil yang ditemukan.';

  @override
  String get popular => 'Populer';

  @override
  String get recent => 'Terbaru';

  @override
  String get noRecentResults => 'Tidak ada hasil pencarian terbaru.';

  @override
  String get clickHere => 'Klik disini';

  @override
  String get searchKnowledgeBase => ' cari di basis data kami.';

  @override
  String get results => 'Hasil';

  @override
  String get noResults => 'Tidak ada hasil';

  @override
  String get networkDisconnected => 'Jaringan terputus atau tidak tersedia.';

  @override
  String get noFavorites => 'Tidak ada Favorit';

  @override
  String get apps => 'Aplikasi';

  @override
  String get forms => 'Formulir';

  @override
  String get camera => 'Kamera';

  @override
  String get gallery => 'Galeri';

  @override
  String get files => 'Mengajukan';

  @override
  String get cameraErrorTitle => 'Tidak Bisa Membuka Kamera';

  @override
  String get cameraError => 'Silakan coba lagi atau buka di perangkat lain';

  @override
  String get searchItem => 'Cari item...';

  @override
  String get loadMore => 'Muat Lebih Banyak';

  @override
  String get location => 'Lokasi';

  @override
  String get modifyLocation => 'Ubah Lokasi';

  @override
  String get viewLocation => 'Ver Ubicación';

  @override
  String get offlineUpdateLocationMessage => 'Koneksi jaringan diperlukan untuk memperbarui lokasi';

  @override
  String get offlineViewLocationMessage => 'Koneksi jaringan diperlukan untuk melihat lokasi';

  @override
  String get connectNetwork => 'Coba sambungkan kembali ke jaringan WiFi atau seluler Anda';

  @override
  String get showMoreResults => 'Tampilkan Lebih Banyak Hasil';

  @override
  String get showLessResults => 'Tampilkan Lebih Sedikit Hasil';

  @override
  String get employeeNotFound => 'Employee Tidak Ditemukan';

  @override
  String get networkError => 'Terjadi kesalahan saat mengambil informasi ini, pastikan Anda terhubung ke internet dan coba lagi.';

  @override
  String get copied => 'Disalin';
}
