import 'package:fmi_core/models/connectedAssetLookup/connectedAssetLookup.dart';
import 'package:fmi_core/repository/api/interfaces/connected_asset_repository.dart';
import 'package:fmi_core/services/interfaces/connected_asset_service.dart';
import 'package:get_it/get_it.dart';

class ConnectedAssetServiceImpl implements ConnectedAssetService {
  final ConnectedAssetRepository _connectedAssetRepository =
      GetIt.instance.get<ConnectedAssetRepository>();

  @override
  Future<List<Asset>> getAssets({bool forceApiCall = false}) async {
    return await _connectedAssetRepository.getAssets(forceApiCall: forceApiCall);
  }

  @override
  Future<Asset?> getAssetByAssetName(String assetName) async {
    return await _connectedAssetRepository.getAssetByAssetName(assetName);
  }
}
