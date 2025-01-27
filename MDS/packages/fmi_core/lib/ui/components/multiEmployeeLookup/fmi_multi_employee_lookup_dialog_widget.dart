import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

class FmiMultiEmployeeLookupDialogWidget extends StatefulWidget {
  const FmiMultiEmployeeLookupDialogWidget(
      {Key? key,
      required this.title,
      required this.onSave,
      this.initialValue,
      this.endpointUrlRelativePath})
      : super(key: key);

  final String title;
  final Function(List<Employee>? selectedEmployees) onSave;
  final List<Employee>? initialValue;
  final String? endpointUrlRelativePath;

  @override
  State<FmiMultiEmployeeLookupDialogWidget> createState() =>
      _FmiMultiEmployeeLookupDialogWidgetState();
}

class _FmiMultiEmployeeLookupDialogWidgetState
    extends State<FmiMultiEmployeeLookupDialogWidget> with EmployeeLookupMixin {
  List<Employee>? selectedEmployees;
  final EmployeeService _employeeService =
      GetIt.instance.get<EmployeeService>();
  List<Employee> _regionalEmployees = [];
  List<Employee> _regionalOfflineEmployees = [];
  List<Employee> items = [];
  bool _isOnlineMode = false;
  int perPage = 20;
  int _page = 1;
  int _oldPage = 0;
  bool more = false;
  String searcQuery = "";
  String oldQuery = "";
  bool _isBusy = false;

  @override
  void initState() {
    selectedEmployees = widget.initialValue;
    super.initState();

    asyncInit();
  }

  void asyncInit() async {
    _isOnlineMode = getOnlineStatus(
        endpointUrlRelativePath: widget.endpointUrlRelativePath);
    if (!_isOnlineMode) {
      _regionalOfflineEmployees = await _employeeService.getEmployees();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ClosableAppBar(
          title: widget.title,
          onClose: () {
            Navigator.pop(context);
          },
          onSave: () {
            widget.onSave(selectedEmployees);
            Navigator.pop(context);
          },
        ),
        body: FmiMultiSelectList<Employee>(
          showAll: false,
          searchDomain: Domains.employeeSearchDomain,
          searchTerm: onSearch,
          initialSelectedItems: widget.initialValue
              ?.map((employee) => SearchItem(
                  item: employee,
                  itemKey: employee.employeeID,
                  displayText: employee.displayName?.toTitleCase() ??
                      context.coreLocalize.unknown,
                  avatarUrl: employee.photoUrl))
              .toList(),
          onSelectedItemsChanged: (selectedItems) {
            selectedEmployees = selectedItems;
          },
          listItemIcon: FontAwesomeIcons.solidUser,
          onLoadMore: more
              ? () {
                  _page++;
                }
              : null,
        ));
  }

  Future<List<SearchItem<Employee>>> onSearch(String query) async {
    int limit = 0;

    searcQuery = query;

    if (oldQuery != query) {
      oldQuery = query;
      _regionalEmployees = [];
      _page = 1;
      _oldPage = 0;
    }

    if (_oldPage != _page) {
      _oldPage = _page;

      if (_isOnlineMode) {
        PageSetEmployee ps = await getOnlineEmployee();
        List<Employee> additionalData = ps.items;

        List<Employee> filteredEmployees =
            getFilteredEmployees(searcQuery, additionalData);

        _regionalEmployees.addAll(filteredEmployees);
        more = ps.more;
      } else {
        List<Employee> filteredEmployees =
            getFilteredEmployees(searcQuery, _regionalOfflineEmployees);

        limit = filteredEmployees.length < (_page * perPage)
            ? filteredEmployees.length
            : (_page * perPage);

        _regionalEmployees.addAll(
            filteredEmployees.getRange(_regionalEmployees.length, limit));
        more = _regionalEmployees.length < filteredEmployees.length;
      }
    }
    setState(() {});
    return _regionalEmployees
        .map((employee) => SearchItem<Employee>(
            item: employee,
            itemKey: employee.employeeID,
            displayText: employee.displayName?.toTitleCase() ??
                context.coreLocalize.unknown,
            avatarUrl: employee.photoUrl))
        .toList();
  }

  Future<PageSetEmployee> getOnlineEmployee() async {
    PageSetEmployee result = await _employeeService.getEmployeeOnlineMode(
        widget.endpointUrlRelativePath!, _page, perPage, searcQuery);

    return result;
  }
}
