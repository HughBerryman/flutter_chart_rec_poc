import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiMultiEmployeeLookupWidget extends StatefulWidget {
  const FmiMultiEmployeeLookupWidget(
      {Key? key,
      this.fieldTitle,
      this.errorText,
      this.onChanged,
      this.initialValue,
      this.enabled = true,
      this.showChips = true,
      this.showCameraReaderButton = false,
      this.endpointUrlRelativePath})
      : super(key: key);

  final String? fieldTitle;
  final String? errorText;
  final Function(List<Employee>? selectedEmployees)? onChanged;
  final List<Employee>? initialValue;
  final bool enabled;
  final bool showChips;
  final bool showCameraReaderButton;
  final String? endpointUrlRelativePath;

  @override
  State<FmiMultiEmployeeLookupWidget> createState() =>
      _FmiMultiEmployeeLookupWidgetState();
}

class _FmiMultiEmployeeLookupWidgetState
    extends State<FmiMultiEmployeeLookupWidget> {
  List<Employee>? _selectedEmployees;
  String? _validatorErrorText;
  final TextEditingController _textEditingController = TextEditingController();

  late bool _showChips;

  @override
  void initState() {
    setState(() {
      _showChips = widget.showChips;
      _selectedEmployees = widget.initialValue;
    });

    super.initState();
  }

  @override
  void didUpdateWidget(FmiMultiEmployeeLookupWidget oldWidget) {
    if (oldWidget.initialValue != widget.initialValue) {
      setState(() {
        _selectedEmployees = widget.initialValue;
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MouseRegion(
          cursor: widget.enabled
              ? SystemMouseCursors.click
              : SystemMouseCursors.forbidden,
          child: IgnorePointer(
            ignoring: !widget.enabled,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Theme(
                        data: FmiInputDecorationTheme.defaultOutlineBorderTheme(
                            context),
                        child: TextField(
                          controller: _textEditingController,
                          style: Theme.of(context).textTheme.bodyLarge?.apply(
                              color: Theme.of(context).colorScheme.onSurface),
                          decoration: InputDecoration(
                            label: Text(widget.fieldTitle ??
                                context.coreLocalize.addEmployee),
                            enabled: widget.enabled,
                            errorText: getErrorText(),
                            suffixIcon: const Icon(
                                FontAwesomeIcons.magnifyingGlass,
                                size: FMIThemeBase.baseIconSmall),
                          ),
                        ),
                      ),
                      Positioned.fill(
                          child: GestureDetector(
                              onTap: openSearchDialog,
                              child: Container(
                                color: Colors.transparent,
                              ))),
                    ],
                  ),
                ),
                if (widget.showCameraReaderButton)
                  Padding(
                    padding: const EdgeInsets.only(left: FMIThemeBase.baseGap6),
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.solidBarcodeRead,
                          size: FMIThemeBase.baseIconLarge,
                          color: widget.enabled
                              ? Theme.of(context)
                                  .colorScheme
                                  .fmiBaseThemeAltSurfaceInverseOnAltSurface
                              : Theme.of(context)
                                  .colorScheme
                                  .fmiBaseThemeAltSurfaceInverseOnAltSurface
                                  .withOpacity(FMIThemeBase.baseOpacity40)),
                      onPressed: () => widget.enabled ? _onPressed() : null,
                    ),
                  ),
              ],
            ),
          ),
        ),
        if (_selectedEmployees != null && _showChips)
          Padding(
            padding: const EdgeInsets.only(top: FMIThemeBase.baseGapLarge),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: FMIThemeBase.baseGapMedium,
              children: [
                for (var selectedEmployee in _selectedEmployees!)
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: FMIThemeBase.baseGapMedium),
                    child: InputChip(
                      isEnabled: widget.enabled,
                      label: Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        child: Text(
                            selectedEmployee.displayName?.toTitleCase() ??
                                context.coreLocalize.unknown),
                      ),
                      avatar: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FmiAvatar(
                            url: selectedEmployee.photoUrl,
                            displayName: selectedEmployee.displayName ??
                                context.coreLocalize.unknown,
                            avatarSize: FmiAvatarSize.medium,
                          ),
                        ],
                      ),
                      onDeleted: widget.enabled
                          ? () {
                              setState(() {
                                _selectedEmployees!.remove(selectedEmployee);
                                if (widget.onChanged != null) {
                                  widget.onChanged!(_selectedEmployees);
                                }
                              });
                            }
                          : null,
                    ),
                  ),
              ],
            ),
          )
      ],
    );
  }

  String? getErrorText() {
    String? result;

    if (_validatorErrorText != null) {
      result = _validatorErrorText;
    } else if (widget.errorText != null) {
      result = widget.errorText;
    }

    return result;
  }

  void openSearchDialog() {
    if (widget.enabled) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FmiMultiEmployeeLookupDialogWidget(
                    title:
                        widget.fieldTitle ?? context.coreLocalize.addEmployee,
                    onSave: (employees) {
                      setState(() {
                        _selectedEmployees = employees;
                        if (widget.onChanged != null) {
                          _showChips = true;
                          _validatorErrorText = null;
                          widget.onChanged!(_selectedEmployees);
                        }
                      });
                    },
                    initialValue: _selectedEmployees,
                    endpointUrlRelativePath: widget.endpointUrlRelativePath,
                  )));
    }
  }

  void _onPressed() {
    if (!widget.enabled) {
      return;
    }
    launchEmployeeQRDialog();
  }

  launchEmployeeQRDialog() {
    var dialog = EmployeeQRDialog(
        enabled: widget.enabled,
        onSelectedEmployee: onEmployeeSelected,
        endpointUrlRelativePath: widget.endpointUrlRelativePath);
    Navigator.push(context, MaterialPageRoute(builder: (context) => dialog));
  }

  void onEmployeeSelected(Employee? searchEmployee) {
    _validatorErrorText = null;
    List<Employee> _searchEmployees =
        _selectedEmployees != null ? _selectedEmployees! : [];
    bool showChip = false;

    if (searchEmployee != null) {
      if (!_searchEmployees
          .any((e) => e.employeeID.contains(searchEmployee.employeeID))) {
        _searchEmployees.add(searchEmployee);
      }
      _selectedEmployees = _searchEmployees;
    } else {
      setState(() {
        _validatorErrorText = context.coreLocalize.employeeNotFound;
      });
    }

    if (_selectedEmployees != null && _selectedEmployees!.isNotEmpty) {
      showChip = true;
    }

    setState(() {
      _showChips = showChip;
      widget.onChanged!(_selectedEmployees);
    });
  }
}
