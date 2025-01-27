import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'employee.g.dart';

@Collection()
@JsonSerializable()
class Employee {
  @Id()
  int? id;
  String employeeID;
  String? firstName;
  String? lastName;
  String? displayName;
  String? jobTitle;
  String? photoUrl;
  String? email;
  String? companyDescription;
  String? supervisorID;
  String? supervisorName;
  String? supervisorEmail;
  String? supervisorPhotoURL;
  String? supervisorJobTitle;
  String? workPhone;
  String? mobilePhone;
  bool outOfOffice;
  String? administrativeLocationID;
  String? administrativeLocationDescription;
  String? regionID;
  String? regionDescription;
  String? officeLocation;
  String? roomNumber;
  String? departmentID;
  String? departmentDescription;
  String? organizationalUnit;
  String? organizationalUnitDescription;
  String? costCenter;
  String? workLocationID;
  String? workLocationDescription;
  String? externalCompanyID;
  List<Employee>? subordinates;
  String? outOfOfficeType;
  String? hrSystemID;
  String? exemptIndicator;
  String? exemptIndicatorDescription;

  Employee({
    required this.employeeID,
    this.firstName,
    this.lastName,
    this.displayName,
    this.jobTitle,
    this.photoUrl,
    this.email,
    this.companyDescription,
    this.supervisorID,
    this.supervisorName,
    this.supervisorEmail,
    this.supervisorPhotoURL,
    this.supervisorJobTitle,
    this.workPhone,
    this.mobilePhone,
    this.administrativeLocationID,
    this.administrativeLocationDescription,
    this.regionID,
    this.regionDescription,
    this.officeLocation,
    this.roomNumber,
    this.departmentID,
    this.departmentDescription,
    this.organizationalUnit,
    this.organizationalUnitDescription,
    this.costCenter,
    this.workLocationID,
    this.workLocationDescription,
    this.subordinates,
    this.externalCompanyID,
    this.outOfOffice = false,
    this.hrSystemID,
    this.exemptIndicator,
    this.exemptIndicatorDescription,
  });

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
