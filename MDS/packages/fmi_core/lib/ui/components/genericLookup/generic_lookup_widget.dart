import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:fmi_core/fmi_core.dart';

class GenericLookupWidget extends StatefulWidget {
  const GenericLookupWidget({
    Key? key,
    this.fieldTitle,
    this.errorText,
    this.onChanged,
    this.initialValue,
    this.enabled = true,
    this.asyncValidator,
    this.lookupItems,
    required this.options,
    this.supportOnline = false,
    required this.dataSource,
  }) : super(key: key);

  final String? fieldTitle;
  final String? errorText;
  final Function(GenericTableItem? selectedItem)? onChanged;
  final GenericTableItem? initialValue;
  final bool enabled;
  final Future<String?> Function(GenericTableItem? selectedItem)?
      asyncValidator;
  final PageSetGenericLookupModel? lookupItems;
  final GenericLookupDataOptions options;
  final bool supportOnline;
  final String dataSource;

  @override
  State<GenericLookupWidget> createState() => _GenericLookupWidgetState();
}

class _GenericLookupWidgetState extends State<GenericLookupWidget> {
  GenericTableItem? _selectedItem;
  String? _validatorErrorText;
  String? value;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    setState(() {
      if (widget.initialValue != null) {
        _selectedItem = widget.initialValue ?? widget.initialValue;
        value = _selectedItem!.value;
        _textEditingController.text = value ?? "";
      }
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
        child: Stack(
          children: [
            Theme(
              data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
              child: TextField(
                controller: _textEditingController,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.apply(color: Theme.of(context).colorScheme.onSurface),
                decoration: InputDecoration(
                  enabled: widget.enabled,
                  label: Text(widget.fieldTitle ?? context.coreLocalize.searchItem),
                  errorText: getErrorText(),
                  suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass,
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
    if (widget.lookupItems != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GenericLookupDialogWidget(
            title: widget.fieldTitle ?? context.coreLocalize.search,
            lookupItems: widget.lookupItems!,
            options: widget.options,
            dataSource: widget.dataSource,
            supportOnline: widget.supportOnline,
            onItemSelected: (selectedItem) async {
              _selectedItem = selectedItem;
              _textEditingController.text = selectedItem!.value;

              if (widget.enabled && widget.asyncValidator != null) {
                setState(() {
                  _validatorErrorText = context.coreLocalize.validating;
                  if (widget.onChanged != null) {
                    widget.onChanged!(null);
                  }
                });

                String? error = await widget.asyncValidator!(_selectedItem!);
                if (error == null) {
                  setState(() {
                    _validatorErrorText = null;
                  });

                  if (widget.onChanged != null) {
                    widget.onChanged!(_selectedItem!);
                  }
                } else {
                  setState(() {
                    _validatorErrorText = error;
                    if (widget.onChanged != null) {
                      widget.onChanged!(null);
                    }
                  });
                }
              } else if (widget.onChanged != null) {
                widget.onChanged!(_selectedItem!);
              }
            },
          ),
        ),
      );
    }
  }

  void saveDialogResult(GenericTableItem? lookupItem) {
    setState(() {
      _selectedItem = lookupItem;
    });
  }
}
