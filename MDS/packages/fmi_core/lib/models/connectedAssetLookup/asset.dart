import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'asset.g.dart';

@Collection()
@JsonSerializable()
class Asset {
  @Id()
  int? id;
  String? assetName;
  String? equipmentNo;
  String? equipmentName;
  String? description;
  String? assetID;

  Asset({
    this.assetName,
    this.equipmentNo,
    this.equipmentName,
    this.description,
    this.assetID
  });

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
  Map<String, dynamic> toJson() => _$AssetToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
