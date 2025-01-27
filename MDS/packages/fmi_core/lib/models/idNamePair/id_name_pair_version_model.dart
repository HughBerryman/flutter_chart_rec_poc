import 'package:json_annotation/json_annotation.dart';

part 'id_name_pair_version_model.g.dart';

@JsonSerializable(explicitToJson: true)
class IdNamePairVersionModel{
  String id;
  String name;
  String version;

  IdNamePairVersionModel({
    required this.id,
    required this.name,
    required this.version
  });

  factory IdNamePairVersionModel.fromJson(Map<String, dynamic> json) => _$IdNamePairVersionModelFromJson(json);
  Map<String, dynamic> toJson() => _$IdNamePairVersionModelToJson(this);
}