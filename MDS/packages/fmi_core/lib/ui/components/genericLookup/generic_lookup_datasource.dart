import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:flutter/material.dart';

class GenericLookupDataSource extends DataGridSource {
  BuildContext context;
  DataGridController dataGridController;
  final List<GenericTableItems> genericItems;
  final List<GenericTableItems> filteredGenericItems;
  final GenericLookupDataOptions options;
  final bool supportOnline;
  final String dataSource;
  final String searchedTerm;
  static bool more = false;
  static int? total = 0;
  static int page = 1;

  final GenericService _genericService = GetIt.instance.get<GenericService>();
  List<DataGridRow> _dataGridRows = <DataGridRow>[];
  PageSetGenericLookupModel _genericTableModel =
      PageSetGenericLookupModel(tableItems: [], more: false);
  List<GenericTableItems> _tableItems = [];

  GenericLookupDataSource(
    this.context,
    this.dataGridController,
    this.genericItems,
    this.filteredGenericItems,
    this.options,
    this.supportOnline,
    this.dataSource,
    this.searchedTerm,
  ) {
    buildDataGridRows();
    notifyListeners();
  }

  void buildDataGridRows() {
    _dataGridRows = filteredGenericItems
        .map<DataGridRow>((GenericTableItems genericTableItem) {
      List<DataGridCell> dataGridCells = [];
      DataGridCell<String> dataGridCellValue;
      for (var item in genericTableItem.columns) {
        for (var display in options.display) {
          if (supportOnline || options.query != null) {
            if (display.field == item.id) {
              dataGridCellValue = DataGridCell<String>(
                  columnName: item.id.toString(), value: item.value);

              dataGridCells.add(dataGridCellValue);
            }
          } else {
            if (display.field == GenericLookupEnum.id.name) {
              dataGridCellValue = DataGridCell<String>(
                  columnName: display.field, value: item.id);
              dataGridCells.add(dataGridCellValue);
            }
            if (display.field == GenericLookupEnum.value.name) {
              dataGridCellValue = DataGridCell<String>(
                  columnName: display.field, value: item.value);
              dataGridCells.add(dataGridCellValue);
            }
          }
        }
      }

      return DataGridRow(cells: dataGridCells);
    }).toList();
    dataGridController.selectedRows = _dataGridRows;
  }

  @override
  Future<void> handleLoadMoreRows() async {
    await Future.delayed(const Duration(seconds: 5));

    List<String>? queries = options.query;
    _tableItems = [];
    if (supportOnline) {
      _genericTableModel = await _genericService.getDataSource(
          dataSource, searchedTerm, page, options.queryPageSize);
      _genericTableModel.tableItems.map((itemList) {
        return itemList.columns.map((item) {
          if (queries != null) {
            if (queries.contains(item.id) &&
                item.value.toLowerCase().contains(searchedTerm.toLowerCase())) {
              _tableItems.add(itemList);
            }
          } else {
            _tableItems.add(itemList);
          }
        }).toList();
      }).toList();
      _tableItems = _genericTableModel.tableItems;
      total = _genericTableModel.total;
      more = _genericTableModel.more;
      filteredGenericItems.addAll(_tableItems);
    } else {
      genericItems.map((itemList) {
        return itemList.columns.map((item) {
          if (queries != null) {
            if (queries.contains(item.id) &&
                item.value.toLowerCase().contains(searchedTerm.toLowerCase())) {
              _tableItems.add(itemList);
            }
          } else {
            _tableItems.add(itemList);
          }
        }).toList();
      }).toList();

      var tableItems = _tableItems.take(options.queryPageSize! * page).toList();
      total = _tableItems.length;
      more = total! > tableItems.length;
      filteredGenericItems.clear();
      filteredGenericItems.addAll(_tableItems);
    }

    buildDataGridRows();
    notifyListeners();
  }

  @override
  List<DataGridRow> get rows => _dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        key: UniqueKey(),
        cells: row.getCells().map<Widget>((dataGridCell) {
          return Builder(builder: (context) {
            return Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                    horizontal: FMIThemeBase.basePadding8),
                child: Text(
                  dataGridCell.value,
                  overflow: TextOverflow.clip,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface),
                ));
          });
        }).toList());
  }
}
