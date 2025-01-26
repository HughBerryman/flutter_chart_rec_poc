import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

class SingleSelectionEmployeeSearchResultsListWidget extends StatefulWidget {
  final String searchTerm;
  final List<Employee> employeeResults;
  final String? endpointUrlRelativePath;
  final Function(Employee selectedEmployee) onEmployeeSelected;
  final Function(Employee selectedEmployee)? onTrailingSelected;
  final bool? useBadgeSystem;
  final bool isFloatingSearchBar;
  final bool isFullPage;
  final bool showTrailing;

  const SingleSelectionEmployeeSearchResultsListWidget(
      {Key? key,
      required this.searchTerm,
      required this.employeeResults,
      this.endpointUrlRelativePath,
      required this.onEmployeeSelected,
      this.useBadgeSystem = false,
      this.onTrailingSelected,
      this.isFloatingSearchBar = true,
      this.isFullPage = true,
      this.showTrailing = true})
      : super(key: key);

  @override
  State<SingleSelectionEmployeeSearchResultsListWidget> createState() =>
      _SingleSelectionEmployeeSearchResultsListWidgetState();
}

class _SingleSelectionEmployeeSearchResultsListWidgetState
    extends State<SingleSelectionEmployeeSearchResultsListWidget> {
  final EmployeeService _employeeService =
      GetIt.instance.get<EmployeeService>();

  String? _selectedEmployee;

  final double _searchBarPadding = 60;
  int perPage = 20;
  int page = 1;
  int? total;
  bool more = false;
  bool _isBusy = false;
  List<Employee> items = [];
  bool isOnlineMode = false;

  @override
  void didUpdateWidget(
      SingleSelectionEmployeeSearchResultsListWidget oldWidget) {
    if (oldWidget.searchTerm != widget.searchTerm) {
      setState(() {
        items = [];
        page = 1;
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    setState(() {
      isOnlineMode = widget.endpointUrlRelativePath != null &&
          widget.endpointUrlRelativePath!.isNotEmpty;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget result;

    if (widget.searchTerm.isEmpty) {
      result = Padding(
          padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
          child: FmiStartSearchWidget(
            isFullPage: widget.isFullPage,
          ));
    } else {
      result = buildLazyLoadList();
    }

    return result;
  }

  Widget showNotFound() {
    return Padding(
        padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
        child: widget.isFullPage
            ? Center(child: showNotFoundContent())
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [showNotFoundContent()],
              ));
  }

  Widget showNotFoundContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          FontAwesomeIcons.solidUserSlash,
          size: FMIThemeBase.baseIconLarge,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        Padding(
          padding: const EdgeInsets.only(top: FMIThemeBase.baseGapLarge),
          child: Text(
            context.coreLocalize.noResultFound,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        )
      ],
    );
  }

  void loadData() async {
    int limit = 0;

    if (isOnlineMode) {
      setState(() {
        _isBusy = true;
      });
      PageSetEmployee ps = await getOnlineEmployee();
      List<Employee> additionalData = ps.items;
      items.addAll(additionalData);
      more = ps.more;
      total = ps.total;

      if (isBadgeSearch() && additionalData.length == 1) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          widget.onEmployeeSelected(additionalData[0]);
        });
      }
    } else {
      limit = widget.employeeResults.length < (page * perPage)
          ? widget.employeeResults.length
          : (page * perPage);

      items.addAll(widget.employeeResults.getRange(items.length, limit));
      more = items.length < widget.employeeResults.length;
      total = widget.employeeResults.length;
    }

    setState(() {
      page++;
      _isBusy = false;
    });
  }

  bool isBadgeSearch() {
    return widget.useBadgeSystem! && widget.searchTerm.contains(':');
  }

  Future<PageSetEmployee> getOnlineEmployee() async {
    PageSetEmployee result = await _employeeService.getEmployeeOnlineMode(
        widget.endpointUrlRelativePath!, page, perPage, widget.searchTerm);

    result.total = null;

    return result;
  }

  Widget buildLazyLoadList() {
    Widget result;

    if (page == 1) {
      loadData();
    }

    if (_isBusy && items.isEmpty) {
      result = const Center(child: CircularProgressIndicator());
    } else if (items.isEmpty) {
      result = showNotFound();
    } else {
      result = Padding(
        padding: const EdgeInsets.only(
            top: FMIThemeBase.basePadding3, bottom: FMIThemeBase.basePadding3),
        child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.only(
                top: widget.isFloatingSearchBar
                    ? _searchBarPadding
                    : FMIThemeBase.basePadding0),
            itemCount: more ? items.length + 1 : items.length,
            itemBuilder: (context, index) {
              return (index == items.length)
                  ? SizedBox(
                      child: Center(
                          child: _isBusy
                              ? const CircularProgressIndicator()
                              : InkWell(
                                  child: TextButton(
                                  child: Text(getLoadMoreButtonText()),
                                  onPressed: () {
                                    setState(() {
                                      loadData();
                                    });
                                  },
                                ))),
                    )
                  : getEmployeeResultCard(index);
            }),
      );
    }

    return result;
  }

  Widget getEmployeeResultCard(int index) {
    var employee = items[index];

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Material(
            child: FmiEmployeeInfoWidget(
              padding: const EdgeInsets.only(
                left: FMIThemeBase.basePadding6,
                top: FMIThemeBase.basePadding3,
                right: FMIThemeBase.basePadding6,
                bottom: FMIThemeBase.basePadding3,
              ),
              employee: employee,
              onTap: () {
                widget.onEmployeeSelected(employee);

                setState(() {
                  _selectedEmployee = employee.employeeID;
                });
              },
              trailing: widget.showTrailing
                  ? IconButton(
                      onPressed: () {
                        if (widget.onTrailingSelected != null) {
                          widget.onTrailingSelected!(employee);
                        } else {
                          widget.onEmployeeSelected(employee);
                        }

                        setState(() {
                          _selectedEmployee = employee.employeeID;
                        });
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.circlePlus,
                        size: FMIThemeBase.baseIcon20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }

  String getLoadMoreButtonText() {
    String result = "";
    if (total == null) {
      result = context.coreLocalize.loadMore;
    } else {
      int itemsRemaining = total! - items.length;
      result = context.coreLocalize.loadMore + " ($itemsRemaining)";
    }

    return result;
  }
}
