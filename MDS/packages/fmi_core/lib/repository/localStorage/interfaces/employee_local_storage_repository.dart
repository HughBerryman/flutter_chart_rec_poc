import 'package:fmi_core/models/employeeLookup/employee.dart';

abstract class EmployeeLocalStorageRepository {
  Future setEmployees(List<Employee> employees);
  Future<List<Employee>> getEmployees();
  Future deleteAllEmployees();
  Future addEmployees(List<Employee> employees);
  Future<Employee?> getEmployeeById(String employeeId);
}