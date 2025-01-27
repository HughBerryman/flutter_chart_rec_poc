import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmployeeLookupWidget extends StatefulWidget {
  const EmployeeLookupWidget(
      {Key? key,
      this.fieldTitle,
      this.errorText,
      this.onChanged,
      this.initialValue,
      this.enabled = true,
      this.endpointUrlRelativePath,
      this.asyncValidator,
      this.iconSize,
      this.showCameraReaderButton = false})
      : super(key: key);

  final String? fieldTitle;
  final String? errorText;
  final Function(Employee? selectedEmployee)? onChanged;
  final Employee? initialValue;
  final bool enabled;
  final String? endpointUrlRelativePath;
  final Future<String?> Function(Employee? selectedEmployee)? asyncValidator;
  final double? iconSize;
  final bool showCameraReaderButton;

  @override
  State<EmployeeLookupWidget> createState() => _EmployeeLookupWidgetState();
}

class _EmployeeLookupWidgetState extends State<EmployeeLookupWidget> {
  Employee? _selectedEmployee;
  String? _validatorErrorText;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    setState(() {
      _selectedEmployee = widget.initialValue;
      _textEditingController.text =
          _selectedEmployee?.displayName?.toTitleCase() ?? "";
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
                        enabled: widget.enabled,
                        label: Text(widget.fieldTitle ??
                            context.coreLocalize.searchEmployee),
                        errorText: getErrorText(),
                        suffixIcon: Icon(FontAwesomeIcons.magnifyingGlass,
                            size:
                                widget.iconSize ?? FMIThemeBase.baseIconSmall),
                      ),
                    ),
                  ),
                  Positioned.fill(
                      child: InkWell(
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
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EmployeeLookupDialogWidget(
          title: widget.fieldTitle ?? context.coreLocalize.searchEmployee,
          endpointUrlRelativePath: widget.endpointUrlRelativePath,
          onEmployeeSelected: ((selectedEmployee) =>
              onEmployeeSelected(selectedEmployee)),
        ),
      ),
    );
  }

  Future<void> onEmployeeSelected(Employee? selectedEmployee) async {
    if (selectedEmployee != null) {
      setState(() {
        _validatorErrorText = null;
      });

      _selectedEmployee = selectedEmployee;

      _textEditingController.text = selectedEmployee.displayName!.toTitleCase();

      if (widget.enabled && widget.asyncValidator != null) {
        setState(() {
          _validatorErrorText = context.coreLocalize.validating;
          widget.onChanged!(null);
        });

        String? error = await widget.asyncValidator!(_selectedEmployee!);
        if (error == null) {
          setState(() {
            _validatorErrorText = null;
          });

          if (widget.onChanged != null) {
            widget.onChanged!(_selectedEmployee);
          }
        } else {
          setState(() {
            _validatorErrorText = error;
            widget.onChanged!(null);
          });
        }
      } else if (widget.onChanged != null) {
        widget.onChanged!(_selectedEmployee);
      }
    } else {
      _textEditingController.text = "";
      setState(() {
        _validatorErrorText = context.coreLocalize.employeeNotFound;
      });
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
}
