import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked/stacked.dart';

class OfflineDetectableViewModel extends BaseViewModel {
  final InternetConnectivityProvider _internetConnectivityProvider = GetIt.instance.get<InternetConnectivityProvider>();
  bool get hasInternet => _internetConnectivityProvider.connected;

  void initialize() async {
    _internetConnectivityProvider.addListener(internetConnectivityUpdated);
  }

  @override
  void dispose(){
    _internetConnectivityProvider.removeListener(internetConnectivityUpdated);

    super.dispose();
  }

  void internetConnectivityUpdated() async {
    notifyListeners();
  }
}