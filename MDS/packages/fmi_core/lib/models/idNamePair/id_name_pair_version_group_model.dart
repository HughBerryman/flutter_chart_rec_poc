import 'package:json_annotation/json_annotation.dart';

part 'id_name_pair_version_group_model.g.dart';

@JsonSerializable(explicitToJson: true)
class IdNamePairVersionGroupModel {
  String id;
  String name;
  String version;
  String? groupID;
  String? groupName;

  IdNamePairVersionGroupModel({
    required this.id,
    required this.name,
    required this.version,
    this.groupID,
    this.groupName,
  });

  factory IdNamePairVersionGroupModel.fromJson(Map<String, dynamic> json) =>
      _$IdNamePairVersionGroupModelFromJson(json);
  Map<String, dynamic> toJson() => _$IdNamePairVersionGroupModelToJson(this);
}
