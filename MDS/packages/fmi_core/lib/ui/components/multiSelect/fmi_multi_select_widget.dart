import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiMultiSelectWidget<T> extends StatefulWidget {
  const FmiMultiSelectWidget(
      {Key? key,
      this.fieldTitle,
      required this.searchTerm,
      this.initialSelectedItems,
      this.onSelectedItemsChanged,
      this.listItemIcon,
      this.searchDomain,
      this.showAll = true,
      this.enabled = true,
      this.errorText})
      : super(key: key);

  final String? fieldTitle;
  final Future<List<SearchItem<T>>> Function(String term) searchTerm;
  final List<SearchItem<T>>? initialSelectedItems;
  final Function(List<T>)? onSelectedItemsChanged;
  final IconData? listItemIcon;
  final String? searchDomain;
  final bool showAll;
  final bool enabled;
  final String? errorText;

  @override
  State<FmiMultiSelectWidget<T>> createState() =>
      _FmiMultiSelectWidgetState<T>();
}

class _FmiMultiSelectWidgetState<T> extends State<FmiMultiSelectWidget<T>> {
  List<SearchItem<T>> selectedItems = [];
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.initialSelectedItems != null) {
      selectedItems = widget.initialSelectedItems!;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MouseRegion(
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
                      controller: controller,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.apply(color: Theme.of(context).colorScheme.onSurface),
                      decoration: InputDecoration(
                        label: Text(
                            widget.fieldTitle ?? context.coreLocalize.addItem),
                        suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass,
                            size: FMIThemeBase.baseIconSmall),
                        enabled: widget.enabled,
                        errorText: widget.errorText,
                      )),
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
        ),
        Padding(
          padding: const EdgeInsets.only(top: FMIThemeBase.baseGapLarge),
          child: Wrap(
              alignment: WrapAlignment.start,
              spacing: FMIThemeBase.baseGapMedium,
              children: [
                for (var selectedItem in selectedItems)
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: FMIThemeBase.baseGapMedium),
                    child: InputChip(
                        isEnabled: widget.enabled,
                        label: Padding(
                          padding: const EdgeInsets.all(
                              FMIThemeBase.basePaddingSmall),
                          child: Text(
                            selectedItem.displayText,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        avatar: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FmiAvatar(
                              url: selectedItem.avatarUrl,
                              displayName: selectedItem.displayText,
                              avatarSize: FmiAvatarSize.medium,
                            ),
                          ],
                        ),
                        onDeleted: widget.enabled
                            ? () {
                                setState(() {
                                  selectedItems.remove(selectedItem);
                                  if (widget.onSelectedItemsChanged != null) {
                                    widget.onSelectedItemsChanged!(selectedItems
                                        .map(
                                            (selectedItem) => selectedItem.item)
                                        .toList());
                                  }
                                });
                              }
                            : null),
                  ),
              ]),
        )
      ],
    );
  }

  void openSearchDialog() {
    if (widget.enabled) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FmiMultiSelectDialogWidget(
                    title: widget.fieldTitle ?? context.coreLocalize.addItem,
                    searchTerm: widget.searchTerm,
                    initialSelectedItems: selectedItems,
                    onSelectedItemsChanged: (items) {
                      setState(() {
                        if (widget.onSelectedItemsChanged != null) {
                          widget.onSelectedItemsChanged!(items);
                        }
                      });
                    },
                    listItemIcon: widget.listItemIcon,
                    searchDomain: widget.searchDomain,
                    showAll: widget.showAll,
                  )));
    }
  }
}
