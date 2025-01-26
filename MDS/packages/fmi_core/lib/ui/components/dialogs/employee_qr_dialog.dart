import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';

class EmployeeQRDialog extends StatefulWidget {
  final bool enabled;
  final Function(Employee? selectedEmployee) onSelectedEmployee;
  final String? endpointUrlRelativePath;

  const EmployeeQRDialog(
      {Key? key,
      required this.enabled,
      required this.onSelectedEmployee,
      this.endpointUrlRelativePath})
      : super(key: key);

  @override
  State<EmployeeQRDialog> createState() => _EmployeeQRDialogState();
}

class _EmployeeQRDialogState extends State<EmployeeQRDialog>
    with EmployeeLookupMixin {
  Employee? _selectedEmployee;
  List<Employee> _regionalEmployees = [];

  final EmployeeService _employeeService =
      GetIt.instance.get<EmployeeService>();
  final SnackBarService _snackBarService =
      GetIt.instance.get<SnackBarService>();

  bool _isOnlineMode = false;
  String _errorMessage = "";

  @override
  void initState() {
    super.initState();
    _isOnlineMode = getOnlineStatus(
        endpointUrlRelativePath: widget.endpointUrlRelativePath);
    asyncInit();
  }

  void asyncInit() async {
    if (!_isOnlineMode) {
      _regionalEmployees = await _employeeService.getEmployees();
    }
  }

  Future<PageSetEmployee> getOnlineEmployee(String searchTerm) async {
    int perPage = 20;
    int page = 1;
    PageSetEmployee result = await _employeeService.getEmployeeOnlineMode(
        widget.endpointUrlRelativePath!, page, perPage, searchTerm);

    result.total = null;

    return result;
  }

  void saveDialogResult(String dialogResult) async {
    Employee? _searchEmployee;
    if (!widget.enabled) {
      return;
    }

    if (dialogResult.isNotEmpty) {
      List<String> rawLines = dialogResult.split('-');
      if (rawLines.isNotEmpty) {
        String employeeId = rawLines[0].padLeft(10, '0');
        if (_isOnlineMode) {
          try {
            PageSetEmployee ps = await getOnlineEmployee(employeeId);
            _searchEmployee =
                getFilteredEmployees(employeeId, ps.items).firstOrNull;
          } catch (e) {
            _selectedEmployee = null;
            _snackBarService.showDismissibleSnackBar(_errorMessage,
                snackBarType: SnackBarType.error);
          }
        } else {
          _searchEmployee =
              getFilteredEmployees(employeeId, _regionalEmployees).firstOrNull;
        }

        if (_searchEmployee != null) {
          _selectedEmployee = Employee(employeeID: _searchEmployee.employeeID);
          _selectedEmployee = _searchEmployee;
        }
      }
    }
    widget.onSelectedEmployee(_selectedEmployee);
  }

  @override
  Widget build(BuildContext context) {
    _errorMessage = context.coreLocalize.networkError;
    return FmiQRScannerDialog(onScan: saveDialogResult);
  }
}
