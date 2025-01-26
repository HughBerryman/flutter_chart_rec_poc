import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/fmi_theme_base.dart';
import 'package:fmi_core/models/genericLookup/generic_lookup_display.dart';
import 'package:fmi_core/models/genericLookup/generic_lookup_options.dart';
import 'package:fmi_core/models/genericLookup/generic_table_item.dart';
import 'package:fmi_core/models/genericLookup/generic_table_items.dart';
import 'package:fmi_core/ui/ui.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoGenericLookup extends StatefulWidget {
  const DemoGenericLookup({Key? key}) : super(key: key);

  @override
  State<DemoGenericLookup> createState() => _DemoGenericLookupState();
}

class _DemoGenericLookupState extends State<DemoGenericLookup> {
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
          child: ComponentHeader(title: 'Offline Lookup'),
        ),
        GenericLookupWidget(
          enabled: true,
          initialValue: selectedItem,
          fieldTitle: "WBS Offline Lookup",
          dataSource: "wbs",
          lookupItems: lookupItems,
          options: GenericLookupDataOptions(
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
          onChanged: (result) {
            setState(() {
              selectedItem = result;
            });
          },
          supportOnline: false,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentHeader(title: 'Online Lookup'),
        ),
        GenericLookupWidget(
          fieldTitle: "WBS Online Lookup",
          dataSource: "wbs",
          lookupItems: lookupItems,
          options: GenericLookupDataOptions(
              id: "wbsElementName",
              value: "wbsNameDescription",
              queryPageSize: 20,
              display: [
                GenericLookupDisplay(
                    field: "wbsElementName", title: "WBS Name"),
                GenericLookupDisplay(
                    field: "wbsDescription", title: "WBS Description"),
                GenericLookupDisplay(field: "department", title: "Department")
              ]),
          onChanged: (result) {
            setState(() {
              selectedItem = result;
            });
          },
          supportOnline: true,
        ),
      ],
    );
  }
}
