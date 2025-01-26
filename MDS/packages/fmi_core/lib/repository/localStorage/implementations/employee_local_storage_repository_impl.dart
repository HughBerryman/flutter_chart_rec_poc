import 'package:fmi_core/models/employeeLookup/employee.dart';
import 'package:fmi_core/repository/localStorage/interfaces/employee_local_storage_repository.dart';
import 'package:isar/isar.dart';

class EmployeeLocalStorageRepositoryImpl implements EmployeeLocalStorageRepository{
  final Isar isar;
  EmployeeLocalStorageRepositoryImpl({required this.isar});

  @override
  Future setEmployees(List<Employee> employees) async {
    await isar.writeTxn((isar) async {
      await getEmployeeCollection().clear();
      await getEmployeeCollection().putAll(employees);
    });
  }
  
  @override
  Future addEmployees(List<Employee> employees) async {
    await isar.writeTxn((isar) async {
      await getEmployeeCollection().putAll(employees);
    });
  }

  @override
  Future deleteAllEmployees() async {
    await isar.writeTxn((isar) async {
      await getEmployeeCollection().clear();
    });
  }

  IsarCollection<Employee> getEmployeeCollection() {
    return isar.employees;
  }

  @override
  Future<List<Employee>> getEmployees() async {
    return await isar.employees.where().findAll();
  }

  @override
  Future<Employee?> getEmployeeById(String employeeId) async {
    return await isar.employees
        .where()
        .filter()
        .employeeIDEqualTo(employeeId)
        .findFirst();
  }
}