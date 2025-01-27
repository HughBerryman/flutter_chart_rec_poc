import 'package:fmi_core/models/connectedAssetLookup/connectedAssetLookup.dart';
import 'package:fmi_core/repository/localStorage/interfaces/connected_asset_local_storage_repository.dart';
import 'package:isar/isar.dart';

class ConnectedAssetLocalStorageRepositoryImpl
    implements ConnectedAssetLocalStorageRepository {
  final Isar isar;
  ConnectedAssetLocalStorageRepositoryImpl({required this.isar});

  @override
  Future setAssets(List<Asset> assets) async {
    await isar.writeTxn((isar) async {
      await getAssetCollection().clear();
      if(assets.isNotEmpty) {
        await getAssetCollection().putAll(assets);
      }
    });
  }

  @override
  Future addAssets(List<Asset> assets) async {
    await isar.writeTxn((isar) async {
      await getAssetCollection().putAll(assets);
    });
  }

  @override
  Future deleteAllAssets() async {
    await isar.writeTxn((isar) async {
      await getAssetCollection().clear();
    });
  }

  IsarCollection<Asset> getAssetCollection() {
    var assets = isar.assets;
    return assets;
  }

  @override
  Future<List<Asset>> getAssets() async {
    return await isar.assets.where().findAll();
  }

  @override
  Future<List<Asset>> getAssetByAssetName(String assetName) async {
    return await getAssetCollection()
        .where()
        .filter()
        .assetNameEqualTo(assetName)
        .findAll();
  }
}
