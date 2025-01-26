import 'package:json_annotation/json_annotation.dart';

part 'id_name_pair_model.g.dart';

@JsonSerializable(explicitToJson: true)
class IdNamePairModel{
  String id;
  String name;

  IdNamePairModel({
    required this.id,
    required this.name
  });

  factory IdNamePairModel.fromJson(Map<String, dynamic> json) => _$IdNamePairModelFromJson(json);
  Map<String, dynamic> toJson() => _$IdNamePairModelToJson(this);
}