import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/fmi_theme_base.dart';
import 'package:fmi_core/models/genericLookup/generic_lookup_display.dart';
import 'package:fmi_core/models/genericLookup/generic_table_item.dart';
import 'package:fmi_core/models/genericLookup/generic_table_items.dart';
import 'package:fmi_core/models/genericLookupMultiSelect/genericLookupMultiSelect.dart';
import 'package:fmi_core/ui/ui.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoGenericLookupMultiSelect extends StatefulWidget {
  const DemoGenericLookupMultiSelect({Key? key}) : super(key: key);

  @override
  State<DemoGenericLookupMultiSelect> createState() =>
      _DemoGenericLookupMultiSelectState();
}

class _DemoGenericLookupMultiSelectState
    extends State<DemoGenericLookupMultiSelect> {
  GenericTableItem? selectedItem;

  static List<GenericTableItem> genericTableItemList = [
    GenericTableItem(
        id: "wbsElementName", value: "0199CAP14001999", isNumeric: false),
    GenericTableItem(
        id: "wbsDescription", value: "Land non-Mining", isNumeric: false),
    GenericTableItem(
        id: "wbsNameDescription",
        value: "0199CAP14001999 - Land non-Mining",
        isNumeric: false),
    GenericTableItem(id: "companyCode", value: "0199", isNumeric: false),
    GenericTableItem(
        id: "department", value: "Administration", isNumeric: false),
    GenericTableItem(
        id: "site", value: "Cerro Verde Eliminations", isNumeric: false),
    GenericTableItem(id: "projectOwner", value: "Jorge", isNumeric: false),
    GenericTableItem(
        id: "projectManagerEmployeeID", value: "0000000000", isNumeric: false),
    GenericTableItem(id: "accountant", value: "Maria", isNumeric: false),
    GenericTableItem(
        id: "accountantEmployeeID", value: "0000000000", isNumeric: false),
  ];
  static GenericTableItems genericTableItems =
      GenericTableItems(columns: genericTableItemList);
  static List<GenericTableItems> tableItems = [genericTableItems];
  final PageSetGenericLookupModel lookupItems =
      PageSetGenericLookupModel(tableItems: tableItems, more: false);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentHeader(title: 'Offline Multi Select Lookup'),
        ),
        GenericLookupMultiSelectWidget(
          fieldTitle: "WBS Offline Multi Select Lookup",
          dataSource: "wbs",
          lookupItems: lookupItems,
          options: GenericLookupMultiSelectDataOptions(
              id: "wbsElementName",
              value: "wbsNameDescription",
              queryPageSize: 20,
              query: [
                "wbsElementName",
                "wbsDescription"
              ],
              display: [
                GenericLookupDisplay(
                    field: "wbsElementName", title: "WBS Name"),
                GenericLookupDisplay(
                    field: "wbsDescription", title: "WBS Description"),
                GenericLookupDisplay(field: "department", title: "Department")
              ]),
          onChanged: (lookupItem) {
            setState(() {
              genericTableItemList = lookupItem!;
            });
          },
          supportOnline: false,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentHeader(title: 'Online Multi Select Lookup'),
        ),
        GenericLookupMultiSelectWidget(
          fieldTitle: "WBS Online Multi Select Lookup",
          dataSource: "wbs",
          lookupItems: lookupItems,
          options: GenericLookupMultiSelectDataOptions(
              id: "wbsElementName",
              value: "wbsNameDescription",
              query: ["wbsElementName", "wbsNameDescription"],
              queryPageSize: 20,
              display: [
                GenericLookupDisplay(
                    field: "wbsElementName", title: "WBS Name"),
                GenericLookupDisplay(
                    field: "wbsDescription", title: "WBS Description"),
                GenericLookupDisplay(field: "department", title: "Department")
              ],
              queryParameter:
                  "&siteID='BAG'&taskGroupID='TCLW'&taskTypeID='FDBK'&statusIDs='C'&statusIDs='D'&statusIDs='A'"),
          onChanged: (lookupItem) {
            setState(() {
              genericTableItemList = lookupItem!;
            });
          },
          supportOnline: true,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentHeader(
              title: 'Disabled and Initial Multi Select Lookup'),
        ),
        GenericLookupMultiSelectWidget(
          fieldTitle: "WBS Disabled and Initial Multi Select Lookup",
          dataSource: "wbs",
          lookupItems: lookupItems,
          initialValue: genericTableItemList,
          enabled: false,
          options: GenericLookupMultiSelectDataOptions(
              id: "wbsElementName",
              value: "wbsNameDescription",
              queryPageSize: 20,
              display: [
                GenericLookupDisplay(
                    field: "wbsElementName", title: "WBS Name"),
                GenericLookupDisplay(
                    field: "wbsNameDescription", title: "WBS Description"),
                GenericLookupDisplay(field: "department", title: "Department")
              ],
              queryParameter: ""),
          onChanged: (lookupItem) {
            setState(() {
              genericTableItemList = lookupItem!;
            });
          },
          supportOnline: false,
        )
      ],
    );
  }
}
