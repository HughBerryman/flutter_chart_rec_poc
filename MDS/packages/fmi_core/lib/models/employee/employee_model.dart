import 'package:json_annotation/json_annotation.dart';

part 'employee_model.g.dart';

@Deprecated("EmployeeModel is being retired, going forward, utilize the Employee object")
@JsonSerializable(explicitToJson: true)
class EmployeeModel{
  String employeeID;
  String? displayName;
  String? photoUrl;
  String? jobTitle;
  String? supervisorID;
  String? computerLogin;
  String? emailAddress;
  String? workLocationDescription;
  String? companyDescription;
  String? externalCompanyDescription;
  String? workGroupDescription;

  EmployeeModel({
    required this.employeeID,
    this.displayName,
    this.photoUrl,
    this.jobTitle,
    this.supervisorID,
    this.computerLogin,
    this.emailAddress,
    this.workLocationDescription,
    this.companyDescription,
    this.externalCompanyDescription,
    this.workGroupDescription
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeeModelToJson(this);
}