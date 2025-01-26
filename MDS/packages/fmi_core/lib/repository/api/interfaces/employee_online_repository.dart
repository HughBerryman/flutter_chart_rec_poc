import 'package:fmi_core/models/employeeLookup/page_set_employee.dart';

abstract class EmployeeOnlineRepository {
  Future<PageSetEmployee> getEmployees(String endpoint);
}