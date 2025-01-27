import 'package:fmi_core/models/connectedAssetLookup/connectedAssetLookup.dart';

abstract class ConnectedAssetRepository {
  Future<List<Asset>> getAssets({bool forceApiCall});
  Future<Asset?> getAssetByAssetName(String assetName);
}
