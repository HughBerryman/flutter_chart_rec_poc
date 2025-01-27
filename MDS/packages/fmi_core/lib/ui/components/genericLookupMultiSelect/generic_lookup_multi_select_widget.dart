import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:fmi_core/fmi_core.dart';

class GenericLookupMultiSelectWidget extends StatefulWidget {
  const GenericLookupMultiSelectWidget({
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
  final Function(List<GenericTableItem>? selectedItem)? onChanged;
  final List<GenericTableItem>? initialValue;
  final bool enabled;
  final Future<String?> Function(List<GenericTableItem>? selectedItem)?
      asyncValidator;
  final PageSetGenericLookupModel? lookupItems;
  final GenericLookupMultiSelectDataOptions options;
  final bool supportOnline;
  final String dataSource;

  @override
  State<GenericLookupMultiSelectWidget> createState() =>
      _GenericLookupMultiSelectWidgetState();
}

class _GenericLookupMultiSelectWidgetState
    extends State<GenericLookupMultiSelectWidget> {
  String? _validatorErrorText;
  String? value;
  final TextEditingController _textEditingController = TextEditingController();
  List<GenericTableItem>? _selectedItems = [];

  @override
  void initState() {
    setState(() {
      if (widget.initialValue != null) {
        _selectedItems = widget.initialValue;
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IgnorePointer(
          ignoring: !widget.enabled,
          child: Stack(
            children: [
              Theme(
                data:
                    FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
                child: TextField(
                  controller: _textEditingController,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.apply(color: Theme.of(context).colorScheme.onSurface),
                  decoration: InputDecoration(
                    enabled: widget.enabled,
                    label: Text(
                        widget.fieldTitle ?? context.coreLocalize.searchItem),
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
        Padding(
          padding: const EdgeInsets.only(top: FMIThemeBase.baseGapLarge),
          child: Wrap(
              alignment: WrapAlignment.start,
              spacing: FMIThemeBase.baseGapMedium,
              children: [
                for (var selectedItem in _selectedItems!)
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: FMIThemeBase.baseGapMedium),
                    child: InputChip(
                      isEnabled: widget.enabled,
                      label: Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        child: Text(
                          selectedItem.value,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      avatar: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FmiAvatar(
                            displayName: selectedItem.value,
                            avatarSize: FmiAvatarSize.medium,
                          ),
                        ],
                      ),
                      onDeleted: widget.enabled
                          ? () {
                              setState(() {
                                _selectedItems!.remove(selectedItem);
                                if (widget.onChanged != null) {
                                  widget.onChanged!(_selectedItems);
                                }
                              });
                            }
                          : null,
                    ),
                  ),
              ]),
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
    if (widget.lookupItems != null && widget.enabled) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GenericLookupMultiSelectDialogWidget(
            title: widget.fieldTitle ?? context.coreLocalize.search,
            lookupItems: widget.lookupItems!,
            options: widget.options,
            dataSource: widget.dataSource,
            supportOnline: widget.supportOnline,
            initialValue: _selectedItems,
            onSave: (selectedItem) {
              _saveDialogResult(selectedItem);
            },
          ),
        ),
      );
    }
  }

  void _saveDialogResult(List<GenericTableItem>? selectedItem) {
    setState(() {
      _selectedItems = selectedItem;
      if (widget.onChanged != null) {
        _validatorErrorText = null;
        widget.onChanged!(_selectedItems);
      }
    });
  }
}
