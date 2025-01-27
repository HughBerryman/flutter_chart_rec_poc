import 'package:fmi_core/models/employeeLookup/employee.dart';
import 'package:fmi_core/models/employeeLookup/page_set_employee.dart';

abstract class EmployeeService {
  Future<List<Employee>> getEmployees({bool forceApiCall});
  Future<Employee?> getEmployeeById(String employeeId, {bool forceApiCall});
  Future<PageSetEmployee> getEmployeeOnlineMode(
      String endpointUrlRelativePath, int page, int pageSize, String query);
}
