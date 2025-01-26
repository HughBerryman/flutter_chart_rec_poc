import 'package:fmi_core/models/connectedAssetLookup/connectedAssetLookup.dart';

abstract class ConnectedAssetService {
  Future<List<Asset>> getAssets({bool forceApiCall});
  Future<Asset?> getAssetByAssetName(String assetName);
}
