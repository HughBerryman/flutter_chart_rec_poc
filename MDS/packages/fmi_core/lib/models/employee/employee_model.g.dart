// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    EmployeeModel(
      employeeID: json['employeeID'] as String,
      displayName: json['displayName'] as String?,
      photoUrl: json['photoUrl'] as String?,
      jobTitle: json['jobTitle'] as String?,
      supervisorID: json['supervisorID'] as String?,
      computerLogin: json['computerLogin'] as String?,
      emailAddress: json['emailAddress'] as String?,
      workLocationDescription: json['workLocationDescription'] as String?,
      companyDescription: json['companyDescription'] as String?,
      externalCompanyDescription: json['externalCompanyDescription'] as String?,
      workGroupDescription: json['workGroupDescription'] as String?,
    );

Map<String, dynamic> _$EmployeeModelToJson(EmployeeModel instance) =>
    <String, dynamic>{
      'employeeID': instance.employeeID,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
      'jobTitle': instance.jobTitle,
      'supervisorID': instance.supervisorID,
      'computerLogin': instance.computerLogin,
      'emailAddress': instance.emailAddress,
      'workLocationDescription': instance.workLocationDescription,
      'companyDescription': instance.companyDescription,
      'externalCompanyDescription': instance.externalCompanyDescription,
      'workGroupDescription': instance.workGroupDescription,
    };
