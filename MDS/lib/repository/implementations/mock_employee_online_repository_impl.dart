import 'package:fmi_core/models/employeeLookup/employee.dart';
import 'package:fmi_core/models/employeeLookup/page_set_employee.dart';
import 'package:fmi_core/repository/api/interfaces/employee_online_repository.dart';

class MockEmployeeOnlineRepositoryImpl implements EmployeeOnlineRepository {
  @override
  Future<PageSetEmployee> getEmployees(String endpoint) async {
    return PageSetEmployee(
        items: mockEmployees
            .map((employee) => Employee.fromJson(employee))
            .toList(),
        more: false,
        total: mockEmployees.length);
  }

  List<Map<String, dynamic>> mockEmployees = [
    {
      "employeeID": "9999990021",
      "firstName": "AUTOMATION PROCESS",
      "lastName": "",
      "displayName": "AUTOMATION PROCESS ",
      "email": "MIS-Helpdesk-NA@fmi.com",
      "jobTitle": "",
      "photoUrl": "",
      "companyDescription": "",
      "supervisorID": null,
      "supervisorName": ""
    },
    {
      "employeeID": "9999990016",
      "firstName": "MIS Asset Management",
      "lastName": "",
      "displayName": "MIS ASSET MANAGEMENT ",
      "email": "",
      "jobTitle": "",
      "photoUrl": "",
      "companyDescription": "",
      "supervisorID": null,
      "supervisorName": ""
    }
  ];
}
