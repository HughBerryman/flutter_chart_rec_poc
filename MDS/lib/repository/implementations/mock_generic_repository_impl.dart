import 'package:fmi_core/fmi_core.dart';

class MockGenericRepositoryImpl implements GenericRepository {
  @override
  Future<PageSetGenericLookupModel> getDataSource(
      String masterDataID, String? query, int? page, int? pageSize,
      {String? queryParameter}) async {
    List<GenericTableItems> genericTableItems = [];
    List<GenericTableItem> genericTableItemList = [];

    genericTableItemList.add(GenericTableItem(
        id: "wbsElementName", value: "0199CAP14001005", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "wbsDescription", value: "Land non-Mining", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "wbsNameDescription",
        value: "0199CAP14001005 - Land non-Mining",
        isNumeric: false));
    genericTableItemList.add(
        GenericTableItem(id: "companyCode", value: "0199", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "department", value: "Administration", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "site", value: "Cerro Verde Eliminations", isNumeric: false));
    genericTableItemList.add(
        GenericTableItem(id: "projectOwner", value: "Jorge", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "projectManagerEmployeeID", value: "0000000000", isNumeric: false));
    genericTableItemList.add(
        GenericTableItem(id: "accountant", value: "Maria", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "accountantEmployeeID", value: "0000000000", isNumeric: false));
    genericTableItems.add(GenericTableItems(columns: genericTableItemList));
    genericTableItemList = [];

    genericTableItemList.add(GenericTableItem(
        id: "wbsElementName", value: "0216CAP139990010002", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "wbsDescription", value: "Proj to Crct", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "wbsNameDescription",
        value: "0216CAP139990010002 - Proj to Crct",
        isNumeric: false));
    genericTableItemList.add(
        GenericTableItem(id: "companyCode", value: "0216", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "department", value: "Process Moly Roastng", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "site", value: "Climax Moly BV FCX Adj", isNumeric: false));
    genericTableItemList.add(
        GenericTableItem(id: "projectOwner", value: "Jorge", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "projectManagerEmployeeID", value: "0000000000", isNumeric: false));
    genericTableItemList.add(
        GenericTableItem(id: "accountant", value: "Maria", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "accountantEmployeeID", value: "0000000000", isNumeric: false));
    genericTableItems.add(GenericTableItems(columns: genericTableItemList));
    genericTableItemList = [];

    genericTableItemList.add(GenericTableItem(
        id: "wbsElementName", value: "0218CAP12001005", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "wbsDescription", value: "Warehouse", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "wbsNameDescription",
        value: "0218CAP12001005 - Warehouse",
        isNumeric: false));
    genericTableItemList.add(
        GenericTableItem(id: "companyCode", value: "0218", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "department", value: "Process Moly General", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "site", value: "Climax Moly BV US Adj", isNumeric: false));
    genericTableItemList.add(
        GenericTableItem(id: "projectOwner", value: "Jorge", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "projectManagerEmployeeID", value: "0000000000", isNumeric: false));
    genericTableItemList.add(
        GenericTableItem(id: "accountant", value: "Maria", isNumeric: false));
    genericTableItemList.add(GenericTableItem(
        id: "accountantEmployeeID", value: "0000000000", isNumeric: false));
    genericTableItems.add(GenericTableItems(columns: genericTableItemList));

    return PageSetGenericLookupModel(
        tableItems: genericTableItems,
        total: genericTableItems.length,
        more: genericTableItems.length > 20);
  }
}
