import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DataGrid extends StatefulWidget {
  const DataGrid({super.key});
  @override
  State<DataGrid> createState() => _DataGridState();
}

class _DataGridState extends State<DataGrid> {
  @override
  void initState() {
    _hfmData = getCostData();
    _hfmDataSource = HFMDataSource(_hfmData);
    super.initState();
  }

  late List<HFMProdCost> _hfmData;
  late HFMDataSource _hfmDataSource;
  final DataGridController _controller = DataGridController();

  final ValueNotifier<bool> frontPanelVisible = ValueNotifier<bool>(true);

  EditingGestureType editingGestureType = EditingGestureType.doubleTap;
  dynamic newCellValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(FMIThemeBase.baseBorderRadiusXLarge),
              topLeft: Radius.circular(FMIThemeBase.baseBorderRadiusXLarge))),
      child: SfDataGrid(
        columnWidthMode: ColumnWidthMode.none,
        navigationMode: GridNavigationMode.cell,
        source: _hfmDataSource,
        editingGestureType: editingGestureType,
        allowEditing: true,
        headerGridLinesVisibility: GridLinesVisibility.none,
        gridLinesVisibility: GridLinesVisibility.none,
        controller: _controller,
        selectionMode: SelectionMode.singleDeselect,
        columns: [
          GridColumn(
              columnWidthMode: ColumnWidthMode.fitByCellValue,
              columnName: 'description',
              maximumWidth: FMIThemeBase.baseContainerDimension300,
              label: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(FMIThemeBase.baseOpacity10),
                              width: FMIThemeBase.baseBorderWidthThick))),
                  padding: const EdgeInsets.symmetric(
                      horizontal: FMIThemeBase.basePadding1),
                  alignment: Alignment.center,
                  child: Text(
                    'Description',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ))),
          GridColumn(
              columnWidthMode: ColumnWidthMode.fitByColumnName,
              columnName: 'mar2023QuarterlyValue',
              label: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(FMIThemeBase.baseOpacity10),
                              width: FMIThemeBase.baseBorderWidthThick))),
                  padding: const EdgeInsets.symmetric(
                      horizontal: FMIThemeBase.basePadding1),
                  alignment: Alignment.center,
                  child: Text(
                    'Mar 2023 QTD',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ))),
          GridColumn(
              columnWidthMode: ColumnWidthMode.fitByColumnName,
              columnName: 'jun2023QuarterlyValue',
              label: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(FMIThemeBase.baseOpacity10),
                              width: FMIThemeBase.baseBorderWidthThick))),
                  padding: const EdgeInsets.symmetric(
                      horizontal: FMIThemeBase.basePadding1),
                  alignment: Alignment.center,
                  child: Text(
                    'Jun 2023 QTD',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ))),
          GridColumn(
              columnWidthMode: ColumnWidthMode.fitByColumnName,
              columnName: 'sep2023QuarterlyValue',
              label: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(FMIThemeBase.baseOpacity10),
                              width: FMIThemeBase.baseBorderWidthThick))),
                  padding: const EdgeInsets.symmetric(
                      horizontal: FMIThemeBase.basePadding1),
                  alignment: Alignment.center,
                  child: Text(
                    'Sep 2023 QTD',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ))),
          GridColumn(
              columnWidthMode: ColumnWidthMode.fitByColumnName,
              columnName: 'dec2023QuarterlyValue',
              label: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(FMIThemeBase.baseOpacity10),
                              width: FMIThemeBase.baseBorderWidthThick))),
                  padding: const EdgeInsets.symmetric(
                      horizontal: FMIThemeBase.basePadding1),
                  alignment: Alignment.center,
                  child: Text(
                    'Dec 2023 QTD',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ))),
        ],
      ),
    );
  }

  List<HFMProdCost> getCostData() {
    return [
      HFMProdCost(
          "Copper Production - Sulfide (lbs)", 0.7751, 0.7551, 0.7551, 0.7551),
      HFMProdCost(
          "Copper Production - SX / EW (lbs)", '---', '---', '---', '---'),
      HFMProdCost("Total Production", 0.7751, 0.7551, 0.7551, 0.7551),
      HFMProdCost("Production Costs", 0.7751, 0.7551, 0.7551, 0.7551),
      HFMProdCost("Total cost", '', '', '', ''),
      HFMProdCost("Mining Cost", 0.7751, 0.7551, 0.7551, 0.7551),
      HFMProdCost("Crush & Convey Cost", '---', '---', '---', '---'),
      HFMProdCost("Milling Cost", '---', '---', '---', '---'),
      HFMProdCost("SX / EW Cost", 0.7751, 0.7551, 0.7551, 0.7551),
      HFMProdCost("Glosure Accural", 189352, 189352, 189352, 189352),
      HFMProdCost("Depreciation & Amortization", '', '', '', ''),
      HFMProdCost("Depletion", 821, 821, 821, 821),
    ];
  }
}

class HFMDataSource extends DataGridSource {
  HFMDataSource(this.hfmData) {
    buildDataGridRows();
  }

  late List<HFMProdCost> hfmData;
  late List<DataGridRow> dataGridRows;
  TextEditingController editingController = TextEditingController();
  @override
  List<DataGridRow> get rows => dataGridRows;

  dynamic newCellValue;

  String getEmptyPlaceholder(String value) {
    return value.isEmpty ? '' : '- - -';
  }

  void buildDataGridRows() {
    dataGridRows = hfmData
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              DataGridCell<String>(
                  columnName: 'description', value: dataGridRow.description),
              DataGridCell<dynamic>(
                  columnName: 'mar2023QuarterlyValue',
                  value: (dataGridRow.marValue is String)
                      ? getEmptyPlaceholder(dataGridRow.marValue)
                      : dataGridRow.marValue),
              DataGridCell<dynamic>(
                  columnName: 'jun2023QuarterlyValue',
                  value: (dataGridRow.junValue is String)
                      ? getEmptyPlaceholder(dataGridRow.junValue)
                      : dataGridRow.junValue),
              DataGridCell<dynamic>(
                  columnName: 'sep2023QuarterlyValue',
                  value: (dataGridRow.sepValue is String)
                      ? getEmptyPlaceholder(dataGridRow.sepValue)
                      : dataGridRow.sepValue),
              DataGridCell<dynamic>(
                  columnName: 'dec2023QuarterlyValue',
                  value: (dataGridRow.decValue is String)
                      ? getEmptyPlaceholder(dataGridRow.decValue)
                      : dataGridRow.decValue),
            ]))
        .toList();
  }

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      Alignment alignment;
      if (dataGridCell.value is double || dataGridCell.value == '- - -') {
        alignment = Alignment.center;
      } else {
        alignment = Alignment.centerLeft;
      }

      return Builder(builder: (context) {
        return Container(
          alignment: alignment,
          padding:
              const EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding7),
          child: Text(
            dataGridCell.value.toString(),
            overflow: TextOverflow.clip,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        );
      });
    }).toList());
  }

  @override
  Widget? buildEditWidget(DataGridRow dataGridRow,
      RowColumnIndex rowColumnIndex, GridColumn column, CellSubmit submitCell) {
    final String displayText = dataGridRow
            .getCells()
            .firstWhere((DataGridCell dataGridCell) =>
                dataGridCell.columnName == column.columnName)
            .value
            ?.toString() ??
        '';
    newCellValue = null;

    return _buildTextFieldWidget(displayText, column, submitCell);
  }

  Widget _buildTextFieldWidget(
      String displayText, GridColumn column, CellSubmit submitCell) {
    return TextField(
      autofocus: true,
      controller: editingController..text = displayText,
      onChanged: (String value) {
        newCellValue = value;
      },
      onSubmitted: (String value) {
        submitCell();
      },
    );
  }

  @override
  Future onCellSubmit(DataGridRow dataGridRow, RowColumnIndex rowColumnIndex,
      GridColumn column) async {
    final dynamic oldValue = dataGridRow
            .getCells()
            .firstWhere((DataGridCell dataGridCell) =>
                dataGridCell.columnName == column.columnName)
            .value ??
        '';

    final int dataRowIndex = dataGridRows.indexOf(dataGridRow);

    if (newCellValue == null ||
        oldValue == newCellValue ||
        newCellValue == '- - -' ||
        oldValue == '- - -') {
      return;
    }

    if (column.columnName.toLowerCase() == 'description') {
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<String>(columnName: 'description', value: newCellValue);
      hfmData[dataRowIndex].description = newCellValue;
    } else if (column.columnName == 'mar2023QuarterlyValue') {
      double newDoubleValue =
          double.tryParse(newCellValue.toString()) ?? oldValue;
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<dynamic>(
              columnName: 'mar2023QuarterlyValue', value: newDoubleValue);
      hfmData[dataRowIndex].marValue = newDoubleValue;
    } else if (column.columnName == 'jun2023QuarterlyValue') {
      double newDoubleValue =
          double.tryParse(newCellValue.toString()) ?? oldValue;
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<dynamic>(
              columnName: 'jun2023QuarterlyValue', value: newDoubleValue);
      hfmData[dataRowIndex].junValue = newDoubleValue;
    } else if (column.columnName == 'sep2023QuarterlyValue') {
      double newDoubleValue =
          double.tryParse(newCellValue.toString()) ?? oldValue;
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<dynamic>(
              columnName: 'sep2023QuarterlyValue', value: newDoubleValue);
      hfmData[dataRowIndex].sepValue = newDoubleValue;
    } else {
      double newDoubleValue =
          double.tryParse(newCellValue.toString()) ?? oldValue;
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<double>(
              columnName: 'dec2023QuarterlyValue', value: newDoubleValue);
      hfmData[dataRowIndex].decValue = newDoubleValue;
    }
  }
}

class HFMProdCost {
  HFMProdCost(this.description, this.marValue, this.junValue, this.sepValue,
      this.decValue);
  String description;
  dynamic marValue;
  dynamic junValue;
  dynamic sepValue;
  dynamic decValue;
}
