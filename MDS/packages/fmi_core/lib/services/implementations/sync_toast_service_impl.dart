import 'dart:async';

import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:synchronized/synchronized.dart';

class SyncToastServiceImpl implements SyncToastService {
  // Services
  final SnackBarService _snackBarService =
      GetIt.instance.get<SnackBarService>();
  final StagedSyncService _stagedSyncService =
      GetIt.instance.get<StagedSyncService>();

  // Variables
  bool isInitialized = false;

  late Stream<void> _faultedStagedSyncWatcher;
  StreamSubscription? _faultedStagedSyncStreamSubscription;

  late final Isar isar;
  Lock lock = Lock();

  SyncToastServiceImpl({required this.isar}) {
    _faultedStagedSyncWatcher =
        isar.faultedStagedSyncs.watchLazy().asBroadcastStream();
  }

  @override
  void initialize() {
    if (!isInitialized) {
      _faultedStagedSyncStreamSubscription =
          _faultedStagedSyncWatcher.listen((event) async {
        lock.synchronized(() async {
          await _toastUnNotifiedFaultedStagedSyncs();
        });
      });
    }

    isInitialized = true;
  }

  Future _toastUnNotifiedFaultedStagedSyncs() async {
    List<FaultedStagedSync> unNotifiedFaultedStagedSyncs =
        await _stagedSyncService.getUnNotifiedFaultedStagedSyncs();

    for (FaultedStagedSync unNotifiedFaultedStagedSync
        in unNotifiedFaultedStagedSyncs) {
      _snackBarService.showDismissibleSnackBar(
          "Sync Error: ${unNotifiedFaultedStagedSync.displayName}",
          snackBarType: SnackBarType.error);
      await _stagedSyncService
          .markFaultedStagedSyncAsNotified(unNotifiedFaultedStagedSync);

      // Do not overwhelm UI with toast messages
      await Future.delayed(const Duration(seconds: 5));
    }
  }

  @override
  void dispose() {
    _faultedStagedSyncStreamSubscription?.cancel();
    isInitialized = false;
  }
}
