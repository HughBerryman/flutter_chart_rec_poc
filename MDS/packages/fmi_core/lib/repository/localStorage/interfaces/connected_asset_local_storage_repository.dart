import 'package:fmi_core/models/connectedAssetLookup/connectedAssetLookup.dart';

abstract class ConnectedAssetLocalStorageRepository {
  Future setAssets(List<Asset> assets);
  Future<List<Asset>> getAssets();
  Future deleteAllAssets();
  Future addAssets(List<Asset> assets);
  Future<List<Asset>> getAssetByAssetName(String assetName);
}
