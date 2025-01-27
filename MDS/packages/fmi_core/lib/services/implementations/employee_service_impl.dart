import 'package:fmi_core/models/employeeLookup/employee.dart';
import 'package:fmi_core/models/employeeLookup/page_set_employee.dart';
import 'package:fmi_core/repository/api/interfaces/employee_online_repository.dart';
import 'package:fmi_core/repository/api/interfaces/employee_repository.dart';
import 'package:fmi_core/services/interfaces/employee_service.dart';
import 'package:get_it/get_it.dart';

class EmployeeServiceImpl implements EmployeeService {
  final EmployeeRepository _employeeRepository =
      GetIt.instance.get<EmployeeRepository>();
  final EmployeeOnlineRepository _employeeOnlineRepository =
      GetIt.instance.get<EmployeeOnlineRepository>();

  @override
  Future<List<Employee>> getEmployees({bool forceApiCall = false}) async {
    return await _employeeRepository.getEmployees(forceApiCall: forceApiCall);
  }

  @override
  Future<Employee?> getEmployeeById(String employeeId,
      {bool forceApiCall = false}) async {
    return await _employeeRepository.getEmployeeById(employeeId,
        forceApiCall: forceApiCall);
  }

  @override
  Future<PageSetEmployee> getEmployeeOnlineMode(String endpointUrlRelativePath,
      int page, int pageSize, String query) async {
    String endpoint = "";
    if (endpointUrlRelativePath.contains('?')) {
      endpoint += "$endpointUrlRelativePath&";
    } else {
      endpoint += "$endpointUrlRelativePath?";
    }
    endpoint += "query=$query&page=$page&pageSize=$pageSize";

    return await _employeeOnlineRepository.getEmployees(endpoint);
  }
}
