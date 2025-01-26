import 'package:fmi_core/models/employeeLookup/employee.dart';

abstract class EmployeeRepository {
  Future<List<Employee>> getEmployees({bool forceApiCall});
  Future<Employee?> getEmployeeById(String employeeId, {bool forceApiCall});
}
