import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';

class FmiEmployeeDirectorySearch extends StatefulWidget {
  const FmiEmployeeDirectorySearch(
      {this.hideElevation = false,
      this.useCircleShape = false,
      this.useBorder = false,
      this.useBadgeSystem = false,
      this.enabled = true,
      this.backgroundColor,
      this.leadingIconColor,
      this.suffixIconColor,
      this.onFocusChanged,
      this.endpointUrlRelativePath,
      required this.onTapEmployee,
      this.onTapTrailing,
      this.showTrailing = true,
      this.maxResultsListHeight,
      this.hideOverlayOnEmployeeSelected = false,
      super.key});

  final bool? hideElevation;
  final bool? useCircleShape;
  final bool? useBorder;
  final bool? useBadgeSystem;
  final bool enabled;
  final bool showTrailing;
  final Color? backgroundColor;
  final Color? leadingIconColor;
  final Color? suffixIconColor;
  final Function(bool isFocused)? onFocusChanged;
  final String? endpointUrlRelativePath;
  final Function(Employee selectedEmployee) onTapEmployee;
  final Function(Employee selectedEmployee)? onTapTrailing;
  final double? maxResultsListHeight;
  final bool hideOverlayOnEmployeeSelected;

  @override
  State<FmiEmployeeDirectorySearch> createState() =>
      _FmiEmployeeDirectorySearchState();
}

class _FmiEmployeeDirectorySearchState extends State<FmiEmployeeDirectorySearch>
    with SingleTickerProviderStateMixin, EmployeeLookupMixin {
  final _searchKey = GlobalKey();
  final FocusNode _focusNode = FocusNode();
  final LayerLink _layerLink = LayerLink();
  bool _isSearching = false;
  final TextEditingController _controller = TextEditingController();
  late AnimationController _animationController;
  OverlayEntry? _overlayEntry;

  List<Employee> _regionalEmployees = [];
  List<Employee> _filteredEmployees = [];
  bool _isOnlineMode = false;

  String _searchQuery = '';

  final EmployeeService _employeeService =
      GetIt.instance.get<EmployeeService>();

  @override
  void initState() {
    super.initState();

    _isOnlineMode = getOnlineStatus(
        endpointUrlRelativePath: widget.endpointUrlRelativePath);

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        showOverlay();

        setState(() {
          _isSearching = true;
        });

        if (widget.onFocusChanged != null) {
          widget.onFocusChanged!(true);
        }
      } else {
        hideOverlay();

        setState(() {
          _isSearching = false;
        });

        if (widget.onFocusChanged != null) {
          widget.onFocusChanged!(false);
        }
      }
    });

    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 350),
        reverseDuration: const Duration(milliseconds: 350));

    asyncInit();
  }

  void asyncInit() async {
    if (!_isOnlineMode) {
      _regionalEmployees = await _employeeService.getEmployees();
    }
  }

  @override
  void dispose() {
    if (_animationController.isAnimating) {
      _animationController.stop();
    }

    _animationController.dispose();
    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  void showOverlay() {
    final overlay = Overlay.of(context);
    final renderBox =
        _searchKey.currentContext!.findRenderObject() as RenderBox;
    final size = renderBox.size;
    _animationController.forward();

    var textFieldPadding =
        FMIThemeBase.basePadding4 + FMIThemeBase.basePadding4;

    if (_overlayEntry == null) {
      _overlayEntry = OverlayEntry(
          builder: (context) => Positioned(
                width: size.width + textFieldPadding,
                child: CompositedTransformFollower(
                    link: _layerLink,
                    showWhenUnlinked: false,
                    offset: Offset(
                        0,
                        size.height +
                            textFieldPadding +
                            FMIThemeBase.basePadding4),
                    child: buildOverlay()),
              ));
      overlay.insert(_overlayEntry!);
    }
  }

  Widget buildOverlay() => FadeScaleTransition(
        animation: _animationController,
        child: Material(
          child: TextFieldTapRegion(
              child: FmiEmployeeDirectorySearchOverlay(
            maxResultsListHeight: widget.maxResultsListHeight,
            searchTerm: _searchQuery,
            employeeResults: _filteredEmployees,
            endpointUrlRelativePath: widget.endpointUrlRelativePath,
            useBadgeSystem: widget.useBadgeSystem,
            onEmployeeSelected: (employee) {
              widget.onTapEmployee(employee);
              if (widget.hideOverlayOnEmployeeSelected) {
                hideOverlay();
              }
              if (widget.useBadgeSystem!) {
                resetSearch();
              }
            },
            onTrailingSelected: (employee) {
              if (widget.onTapTrailing != null) {
                widget.onTapTrailing!(employee);
              }

              hideOverlay();
            },
            showTrailing: widget.showTrailing,
          )),
        ),
      );

  void resetSearch() {
    if (!mounted) {
      return;
    }

    setState(() {
      _searchQuery = '';
      _controller.text = '';
      _filteredEmployees = [];
    });
    _overlayEntry?.markNeedsBuild();
  }

  void hideOverlay() {
    if (!mounted) {
      return;
    }

    if (_animationController.status == AnimationStatus.forward) {
      _animationController.reset();
    }

    setState(() {
      _searchQuery = '';
      _controller.text = '';
    });

    _animationController.reverse().whenComplete(() {
      setState(() {
        _overlayEntry?.remove();
        _overlayEntry = null;
        FocusManager.instance.primaryFocus?.unfocus();
      });
    });
  }

  void onClear() {
    _focusNode.unfocus();
  }

  void searchField(String query) {
    setState(() {
      _searchQuery = query;
      _filteredEmployees = getFilteredEmployees(query, _regionalEmployees);
    });

    _overlayEntry!.markNeedsBuild();
  }

  @override
  Widget build(BuildContext context) {
    return FmiSearchBar(
      searchKey: _searchKey,
      focusNode: _focusNode,
      layerLink: _layerLink,
      isSearching: _isSearching,
      onClear: onClear,
      onChanged: searchField,
      controller: _controller,
      hideElevation: widget.hideElevation,
      useCircleShape: widget.useCircleShape,
      useBorder: widget.useBorder,
      enabled: widget.enabled,
      backgroundColor: widget.backgroundColor,
      leadingIconColor: widget.leadingIconColor,
      suffixIconColor: widget.suffixIconColor,
    );
  }
}
