**Examples**

` `

SfDataGrid Implementation

```dart
SfDataGrid(
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
```

**Custom DataGrid DataGridSource Implementation**
```dart
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
  void onCellSubmit(DataGridRow dataGridRow, RowColumnIndex rowColumnIndex,
      GridColumn column) {
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
```

**Demo Class**
```dart
class HFMProdCost {
  HFMProdCost(this.description, this.marValue, this.junValue, this.sepValue,
      this.decValue);
  String description;
  dynamic marValue;
  dynamic junValue;
  dynamic sepValue;
  dynamic decValue;
}
```

**Demo Required function and variables**
```dart
@override
void initState() {
super.initState();
_hfmData = getCostData();
_hfmDataSource = HFMDataSource(_hfmData);
}

late List<HFMProdCost> _hfmData;
late HFMDataSource _hfmDataSource;
final DataGridController _controller = DataGridController();
EditingGestureType editingGestureType = EditingGestureType.doubleTap;
```


**List Data Grid Implementation**

```dart
Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(FMIThemeBase.baseBorderRadiusXLarge),
              topLeft: Radius.circular(FMIThemeBase.baseBorderRadiusXLarge))),
      child: SfDataGrid(
        columnWidthMode: ColumnWidthMode.none,
        navigationMode: GridNavigationMode.cell,
        source: _employeeDataSource,
        editingGestureType: editingGestureType,
        allowEditing: true,
        gridLinesVisibility: GridLinesVisibility.none,
        headerGridLinesVisibility: GridLinesVisibility.none,
        controller: _controller,
        selectionMode: SelectionMode.singleDeselect,
        stackedHeaderRows: _getStackedHeaderRows(),
        columns: _getColumns(),
      ),
    );
  }

  List<StackedHeaderRow> _getStackedHeaderRows() {
    List<StackedHeaderRow> stackedHeaderRows;
    stackedHeaderRows = <StackedHeaderRow>[
      StackedHeaderRow(cells: <StackedHeaderCell>[
        StackedHeaderCell(
          columnNames: <String>['mar1QVal', 'jun1QVal', 'sep1QVal', 'dec1QVal'],
          child: _getWidgetForStackedHeaderCell(context, '1Q'),
        ),
        StackedHeaderCell(
          columnNames: <String>['mar2QVal', 'jun2QVal', 'sep2QVal', 'dec2QVal'],
          child: _getWidgetForStackedHeaderCell(context, '2Q'),
        ),
        StackedHeaderCell(
          columnNames: <String>['mar3QVal', 'jun3QVal', 'sep3QVal', 'dec3QVal'],
          child: _getWidgetForStackedHeaderCell(context, '3Q'),
        ),
        StackedHeaderCell(
          columnNames: <String>['mar4QVal', 'jun4QVal', 'sep4QVal', 'dec4QVal'],
          child: _getWidgetForStackedHeaderCell(context, '4Q'),
        ),
      ])
    ];
    return stackedHeaderRows;
  }

  Widget _getWidgetForStackedHeaderCell(
      BuildContext context, String headerText) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        headerText,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }

  List<HFMProdCostList> getCostData() {
    return [
      HFMProdCostList(
        dataGridDescription: "Cost Per Round",
        oneQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        twoQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        threeQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        fourQVal: [0.7551, 0.7551, 0.7551, 0.7551],
      ),
      HFMProdCostList(
        dataGridDescription: "Unit Cost",
        oneQVal: ['- - -', '- - -', '- - -', '- - -'],
        twoQVal: ['- - -', '- - -', '- - -', '- - -'],
        threeQVal: ['- - -', '- - -', '- - -', '- - -'],
        fourQVal: ['- - -', '- - -', '- - -', '- - -'],
      ),
      HFMProdCostList(
        dataGridDescription: "Mining Cost (All lbs.) w/diesel price change",
        oneQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        twoQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        threeQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        fourQVal: [0.7551, 0.7551, 0.7551, 0.7551],
      ),
      HFMProdCostList(
        dataGridDescription: "Concentrate Leach Cost (CLP lbs.)",
        oneQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        twoQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        threeQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        fourQVal: [0.7551, 0.7551, 0.7551, 0.7551],
      ),
      HFMProdCostList(
        dataGridDescription: "Leaching Cost (SX / EW lbs.)",
        oneQVal: ['- - -', '- - -', '- - -', '- - -'],
        twoQVal: ['- - -', '- - -', '- - -', '- - -'],
        threeQVal: ['- - -', '- - -', '- - -', '- - -'],
        fourQVal: ['- - -', '- - -', '- - -', '- - -'],
      ),
      HFMProdCostList(
        dataGridDescription: "SX Cost (SX/EW & CLP lbs.)",
        oneQVal: ['- - -', '- - -', '- - -', '- - -'],
        twoQVal: ['- - -', '- - -', '- - -', '- - -'],
        threeQVal: ['- - -', '- - -', '- - -', '- - -'],
        fourQVal: ['- - -', '- - -', '- - -', '- - -'],
      ),
      HFMProdCostList(
        dataGridDescription: "EW Cost (SX/EW & CLP lbs.)",
        oneQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        twoQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        threeQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        fourQVal: [0.7551, 0.7551, 0.7551, 0.7551],
      ),
      HFMProdCostList(
        dataGridDescription: "Other Hydromet Cost",
        oneQVal: [0.7751, 0.7751, 0.7751, 0.7751],
        twoQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        threeQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        fourQVal: [0.7551, 0.7551, 0.7551, 0.7551],
      ),
      HFMProdCostList(
        dataGridDescription: "General & Admin. Cost (All lbs.)",
        oneQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        twoQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        threeQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        fourQVal: [0.7551, 0.7551, 0.7551, 0.7551],
      ),
      HFMProdCostList(
        dataGridDescription: "General & Admin. Cost (All lbs.)",
        oneQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        twoQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        threeQVal: [0.7551, 0.7551, 0.7551, 0.7551],
        fourQVal: [0.7551, 0.7551, 0.7551, 0.7551],
      ),
      HFMProdCostList(
        dataGridDescription: "Taxes Related to Cathode",
        oneQVal: [189352, 189352, 189352, 189352],
        twoQVal: [189352, 189352, 189352, 189352],
        threeQVal: [189352, 189352, 189352, 189352],
        fourQVal: [189352, 189352, 189352, 189352],
      ),
      HFMProdCostList(
        dataGridDescription: "Taxes Other",
        oneQVal: [3, 3, 3, 3],
        twoQVal: [3, 3, 3, 3],
        threeQVal: [3, 3, 3, 3],
        fourQVal: [3, 3, 3, 3],
      ),
      HFMProdCostList(
        dataGridDescription: "Closure Accural (All lbs.)",
        oneQVal: [821, 821, 821, 821],
        twoQVal: [821, 821, 821, 821],
        threeQVal: [821, 821, 821, 821],
        fourQVal: [821, 821, 821, 821],
      ),
      HFMProdCostList(
        dataGridDescription: "Lease Expense (All lbs.)",
        oneQVal: [188535, 188535, 188535, 188535],
        twoQVal: [188535, 188535, 188535, 188535],
        threeQVal: [188535, 188535, 188535, 188535],
        fourQVal: [188535, 188535, 188535, 188535],
      ),
    ];
  }

  List<GridColumn> _getColumns() {
    List<GridColumn> columns;
    columns = <GridColumn>[
      GridColumn(
        columnWidthMode: ColumnWidthMode.fitByCellValue,
        maximumWidth: FMIThemeBase.baseContainerDimension300,
        columnName: 'dataGridDescription',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding8),
            child: Text(
              'Description',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ),
        ),
      ),
      GridColumn(
        columnName: 'mar1QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Mar 1Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'jun1QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Jun 1Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'sep1QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Sep 1Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'dec1QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Dec 1Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'mar2QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Mar 2Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'jun2QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Jun 2Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'sep2QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Sep 2Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'dec2QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Dec 2Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'mar3QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Mar 3Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'jun3QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Jun 3Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'sep3QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Sep 3Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'dec3QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Dec 3Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'mar4QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Mar 4Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'jun4QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Jun 4Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'sep4QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Sep 4Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
      GridColumn(
        columnName: 'dec4QVal',
        label: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(FMIThemeBase.baseOpacity10),
                      width: FMIThemeBase.baseBorderWidthThick))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
          child: Text(
            'Dec 4Q',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
    ];
    return columns;
  }
}
```

**Custom List DataGrid DataGridSource Implementation**

```dart
class HFMListDataSource extends DataGridSource {
  HFMListDataSource(this.hfmData) {
    buildDataGridRows();
  }

  late List<HFMProdCostList> hfmData;
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
                  columnName: 'dataGridDescription',
                  value: dataGridRow.dataGridDescription),
              // 1Q column
              DataGridCell<dynamic>(
                  columnName: 'mar1QVal', value: dataGridRow.oneQVal[0]),
              DataGridCell<dynamic>(
                  columnName: 'jun1QVal', value: dataGridRow.oneQVal[1]),
              DataGridCell<dynamic>(
                  columnName: 'sep1QVal', value: dataGridRow.oneQVal[2]),
              DataGridCell<dynamic>(
                  columnName: 'dec1QVal', value: dataGridRow.oneQVal[3]),

              // 2Q column
              DataGridCell<dynamic>(
                  columnName: 'mar2QVal', value: dataGridRow.twoQVal[0]),
              DataGridCell<dynamic>(
                  columnName: 'jun2QVal', value: dataGridRow.twoQVal[1]),
              DataGridCell<dynamic>(
                  columnName: 'sep2QVal', value: dataGridRow.twoQVal[2]),
              DataGridCell<dynamic>(
                  columnName: 'dec2QVal', value: dataGridRow.twoQVal[3]),

              // 3Q Column
              DataGridCell<dynamic>(
                  columnName: 'mar3QVal', value: dataGridRow.threeQVal[0]),
              DataGridCell<dynamic>(
                  columnName: 'jun3QVal', value: dataGridRow.threeQVal[1]),
              DataGridCell<dynamic>(
                  columnName: 'sep3QVal', value: dataGridRow.threeQVal[2]),
              DataGridCell<dynamic>(
                  columnName: 'dec3QVal', value: dataGridRow.threeQVal[3]),

              // 4Q Column
              DataGridCell<dynamic>(
                  columnName: 'mar4QVal', value: dataGridRow.fourQVal[0]),
              DataGridCell<dynamic>(
                  columnName: 'jun4QVal', value: dataGridRow.fourQVal[1]),
              DataGridCell<dynamic>(
                  columnName: 'sep4QVal', value: dataGridRow.fourQVal[2]),
              DataGridCell<dynamic>(
                  columnName: 'dec4QVal', value: dataGridRow.fourQVal[3]),
            ]))
        .toList();
  }

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      Alignment alignment;
      if (dataGridCell.value == '- - -') {
        alignment = Alignment.centerLeft;
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
  void onCellSubmit(DataGridRow dataGridRow, RowColumnIndex rowColumnIndex,
      GridColumn column) {
    final dynamic oldValue = dataGridRow
            .getCells()
            .firstWhere((DataGridCell dataGridCell) =>
                dataGridCell.columnName == column.columnName)
            .value ??
        '';

    final int dataRowIndex = dataGridRows.indexOf(dataGridRow);

    if (newCellValue == null || oldValue == newCellValue) {
      return;
    }
    if (column.columnName == 'dataGridDescription') {
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<String>(
              columnName: 'dataGridDescription', value: newCellValue);
      hfmData[dataRowIndex].dataGridDescription = newCellValue;
    } else if (column.columnName.substring(0, 3) == 'mar') {
      double newDoubleValue =
          double.tryParse(newCellValue.toString()) ?? oldValue;
      switch (column.columnName) {
        case 'mar1QVal':
          hfmData[dataRowIndex].oneQVal[0] = newDoubleValue;
          break;
        case 'mar2QVal':
          hfmData[dataRowIndex].twoQVal[0] = newDoubleValue;
          break;
        case 'mar3QVal':
          hfmData[dataRowIndex].threeQVal[0] = newDoubleValue;
          break;
        case 'mar4QVal':
          hfmData[dataRowIndex].fourQVal[0] = newDoubleValue;
          break;
      }
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<dynamic>(
              columnName: column.columnName, value: newDoubleValue);
    } else if (column.columnName.substring(0, 3) == 'jun') {
      double newDoubleValue =
          double.tryParse(newCellValue.toString()) ?? oldValue;
      switch (column.columnName) {
        case 'jun1QVal':
          hfmData[dataRowIndex].oneQVal[1] = newDoubleValue;
          break;
        case 'jun2QVal':
          hfmData[dataRowIndex].twoQVal[1] = newDoubleValue;
          break;
        case 'jun3QVal':
          hfmData[dataRowIndex].threeQVal[1] = newDoubleValue;
          break;
        case 'jun4QVal':
          hfmData[dataRowIndex].fourQVal[1] = newDoubleValue;
          break;
      }
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<dynamic>(
              columnName: column.columnName, value: newDoubleValue);
    } else if (column.columnName.substring(0, 3) == 'sep') {
      double newDoubleValue =
          double.tryParse(newCellValue.toString()) ?? oldValue;
      switch (column.columnName) {
        case 'sep1QVal':
          hfmData[dataRowIndex].oneQVal[2] = newDoubleValue;
          break;
        case 'sep2QVal':
          hfmData[dataRowIndex].twoQVal[2] = newDoubleValue;
          break;
        case 'sep3QVal':
          hfmData[dataRowIndex].threeQVal[2] = newDoubleValue;
          break;
        case 'sep4QVal':
          hfmData[dataRowIndex].fourQVal[2] = newDoubleValue;
          break;
      }
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<dynamic>(
              columnName: column.columnName, value: newDoubleValue);
    } else {
      double newDoubleValue =
          double.tryParse(newCellValue.toString()) ?? oldValue;
      switch (column.columnName) {
        case 'dec1QVal':
          hfmData[dataRowIndex].oneQVal[3] = newDoubleValue;
          break;
        case 'dec2QVal':
          hfmData[dataRowIndex].twoQVal[3] = newDoubleValue;
          break;
        case 'dec3QVal':
          hfmData[dataRowIndex].threeQVal[3] = newDoubleValue;
          break;
        case 'dec4QVal':
          hfmData[dataRowIndex].fourQVal[3] = newDoubleValue;
          break;
      }
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<dynamic>(
              columnName: column.columnName, value: newDoubleValue);
    }
  }
}
```

**Demo Class**
```dart
class HFMProdCostList {
  HFMProdCostList(
      {required this.dataGridDescription,
      required this.oneQVal,
      required this.twoQVal,
      required this.threeQVal,
      required this.fourQVal});
  String dataGridDescription;
  List<dynamic> oneQVal;
  List<dynamic> twoQVal;
  List<dynamic> threeQVal;
  List<dynamic> fourQVal;
}
```

**Required function and variables**
```dart
enum ColumnName {
  oneQ,
  twoQ,
  threeQ,
  fourQ,
}

@override
void initState() {
super.initState();
_employeeData = getCostData();
_employeeDataSource = HFMListDataSource(_employeeData);
}

late List<HFMProdCostList> _employeeData;
late HFMListDataSource _employeeDataSource;
final DataGridController _controller = DataGridController();

EditingGestureType editingGestureType = EditingGestureType.doubleTap;
dynamic newCellValue;
```

##### Conditional Data Grid Implementation

```dart
SfDataGrid(
        selectionMode: SelectionMode.singleDeselect,
        navigationMode: GridNavigationMode.cell,
        rowHeight: FMIThemeBase.baseContainerDimension100,
        columnWidthMode: ColumnWidthMode.none,
        source: _truckShiftDataSource,
        headerGridLinesVisibility: GridLinesVisibility.none,
        gridLinesVisibility: GridLinesVisibility.none,
        columns: [
          GridColumn(
              columnWidthMode: ColumnWidthMode.fitByCellValue,
              minimumWidth: FMIThemeBase.baseContainerDimension100,
              maximumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'truck',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Truck',
                      overflow: TextOverflow.clip,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension100,
              columnName: 'operator',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Operator',
                      overflow: TextOverflow.clip,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'avgPayload',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Avg Payload',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'deltaC',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Delta C',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'deltaCIdle',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Delta C Idle',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              columnWidthMode: ColumnWidthMode.fitByCellValue,
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              maximumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'deltaCSpotting',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Delta C Spotting',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'deltaCLoading',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Delta C Loading',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'loadedTravel',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Loaded Travel',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'dumpingStockpile',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Dumping Stockpile',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'dumpingCrusher',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Dumping Crusher',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'emptyTravel',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Empty Travel',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'reason',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Reason',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'timeInState',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Time In State',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
          GridColumn(
              minimumWidth: FMIThemeBase.baseContainerDimension125,
              columnName: 'operatorScorecard',
              label: Container(
                  alignment: Alignment.center,
                  child: Text('Operator Scorecard',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)))),
        ],
      ),
    );
  }

  List<TruckShift> getShiftData() {
    return [
      TruckShift(
          Truck('T500', 'B3490'),
          Operator(
              const FmiAvatar(
                displayName: 'Bob Jancoski',
                url:
                    'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
                avatarSize: FmiAvatarSize.large,
              ),
              'Bob Jancoski'),
          Pair(270.2, 272.0),
          Pair(11.89, 7.25),
          Pair(2.61, 0.11),
          Pair(-2.70, 2.72),
          Pair(0.52, 0.11),
          Pair(2.32, 1.02),
          Pair(-0.78, 0.12),
          Pair(-0.77, 0.12),
          Pair(4.72, 2.45),
          400,
          58,
          82),
      TruckShift(
          Truck('T500', 'B30939399'),
          Operator(
              const FmiAvatar(
                displayName: 'Bob Jancoski',
                url:
                    'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
                avatarSize: FmiAvatarSize.large,
              ),
              'Bob Jancoski'),
          Pair(270.2, 272.0),
          Pair(11.89, 7.25),
          Pair(2.61, 0.11),
          Pair(-2.70, 2.72),
          Pair(0.52, 0.11),
          Pair(2.32, 1.02),
          Pair(-0.78, 0.12),
          Pair(-0.77, 0.12),
          Pair(4.72, 2.45),
          400,
          58,
          82),
      TruckShift(
          Truck('T500', 'Location'),
          Operator(
              const FmiAvatar(
                displayName: 'Bob Jancoski',
                url:
                    'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
                avatarSize: FmiAvatarSize.large,
              ),
              'Bob Jancoski'),
          Pair(270.2, 272.0),
          Pair(11.89, 7.25),
          Pair(2.61, 0.11),
          Pair(-2.70, 2.72),
          Pair(0.52, 0.11),
          Pair(2.32, 1.02),
          Pair(-0.78, 0.12),
          Pair(-0.77, 0.12),
          Pair(4.72, 2.45),
          400,
          58,
          82)
    ];
  }
}
```

**Custom Conditional DataGridSource Implementation**
```dart
class TruckShiftDataSource extends DataGridSource {
  TruckShiftDataSource(this.truckShiftData) {
    buildDataGridRows();
  }

  late List<TruckShift> truckShiftData;
  late List<DataGridRow> dataGridRows;

  @override
  List<DataGridRow> get rows => dataGridRows;

  void buildDataGridRows() {
    dataGridRows = truckShiftData
        .map<DataGridRow>((TruckShift truckShift) => DataGridRow(cells: [
              DataGridCell<Truck>(columnName: 'truck', value: truckShift.truck),
              DataGridCell<Operator>(
                  columnName: 'operator', value: truckShift.operator),
              DataGridCell<Pair>(
                  columnName: 'avgPayload', value: truckShift.avgPayload),
              DataGridCell<Pair>(
                  columnName: 'deltaC', value: truckShift.deltaC),
              DataGridCell<Pair>(
                  columnName: 'deltaCIdle', value: truckShift.deltaCIdle),
              DataGridCell<Pair>(
                  columnName: 'deltaCSpotting',
                  value: truckShift.deltaCSpotting),
              DataGridCell<Pair>(
                  columnName: 'deltaCLoading', value: truckShift.deltaCLoading),
              DataGridCell<Pair>(
                  columnName: 'loadedTravel', value: truckShift.loadedTravel),
              DataGridCell<Pair>(
                  columnName: 'dumpingStockpile',
                  value: truckShift.dumpingStockpile),
              DataGridCell<Pair>(
                  columnName: 'dumpingCrusher',
                  value: truckShift.dumpingCrusher),
              DataGridCell<Pair>(
                  columnName: 'emptyTravel', value: truckShift.emptyTravel),
              DataGridCell<int>(columnName: 'reason', value: truckShift.reason),
              DataGridCell<int>(
                  columnName: 'timeInState', value: truckShift.timeInState),
              DataGridCell<int>(
                  columnName: 'operatorScorecard',
                  value: truckShift.operatorScorecard),
            ]))
        .toList();
  }

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Builder(builder: (context) {
        if (dataGridCell.value is Truck) {
          return Padding(
            padding: const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseOnAltSurface,
                  borderRadius: BorderRadius.circular(
                      FMIThemeBase.baseBorderRadiusLarge)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(dataGridCell.value.truckName,
                        overflow: TextOverflow.clip,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Theme.of(context).colorScheme.primary)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: FMIThemeBase.basePaddingSmall,
                              left: FMIThemeBase.basePaddingMedium),
                          child: Icon(FontAwesomeIcons.locationCrosshairs,
                              color: Theme.of(context).colorScheme.primary,
                              size: FMIThemeBase.baseIconSmall),
                        ),
                        Flexible(
                          child: Text(dataGridCell.value.location,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary)),
                        ),
                      ],
                    ),
                  ]),
            ),
          );
        } else if (dataGridCell.value is Operator) {
          int spaceIndex = dataGridCell.value.name.indexOf(' ');
          List fullName = [
            dataGridCell.value.name.substring(0, spaceIndex).trim(),
            dataGridCell.value.name.substring(spaceIndex + 1).trim()
          ];
          return Padding(
            padding: const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseOnAltSurface,
                  borderRadius: BorderRadius.circular(
                      FMIThemeBase.baseBorderRadiusLarge)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    dataGridCell.value.avatar,
                    Text('${fullName[0]} ${fullName[1].substring(0, 1)}.',
                        overflow: TextOverflow.clip,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.primary)),
                  ]),
            ),
          );
        } else if (dataGridCell.value is Pair) {
          final cardColor = (dataGridCell.value.a < dataGridCell.value.b)
              ? Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess
              : Theme.of(context).colorScheme.fmiBaseThemeDangerDanger;
          final first = dataGridCell.value.a.toStringAsFixed(2);
          final second = dataGridCell.value.b.toStringAsFixed(2);
          return Padding(
            padding: const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
            child: Container(
                decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(
                        FMIThemeBase.baseBorderRadiusLarge)),
                padding: const EdgeInsets.symmetric(
                    horizontal: FMIThemeBase.basePadding8,
                    vertical: FMIThemeBase.basePadding5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(first,
                        overflow: TextOverflow.clip,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary)),
                    Text(second,
                        overflow: TextOverflow.clip,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary)),
                  ],
                )),
          );
        } else {
          String metric = '';
          switch (dataGridCell.columnName) {
            case 'reason':
              metric = 'Prod';
              break;
            case 'timeInState':
              metric = 'mins';
              break;
            case 'operatorScorecard':
              metric = 'Score';
              break;
          }
          return Padding(
            padding: const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
            child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceInverseOnAltSurface,
                    borderRadius: BorderRadius.circular(
                        FMIThemeBase.baseBorderRadiusLarge)),
                padding: const EdgeInsets.symmetric(
                    horizontal: FMIThemeBase.basePadding8,
                    vertical: FMIThemeBase.basePadding5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dataGridCell.value.toString(),
                        overflow: TextOverflow.clip,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Theme.of(context).colorScheme.primary)),
                    Text(metric,
                        overflow: TextOverflow.clip,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Theme.of(context).colorScheme.primary)),
                  ],
                )),
          );
        }
      });
    }).toList());
  }
}
```

**Demo Class**
```dart
class TruckShift {
  TruckShift(
      this.truck,
      this.operator,
      this.avgPayload,
      this.deltaC,
      this.deltaCIdle,
      this.deltaCSpotting,
      this.deltaCLoading,
      this.loadedTravel,
      this.dumpingStockpile,
      this.dumpingCrusher,
      this.emptyTravel,
      this.reason,
      this.timeInState,
      this.operatorScorecard);
  Truck truck;
  Operator operator;
  Pair avgPayload;
  Pair deltaC;
  Pair deltaCIdle;
  Pair deltaCSpotting;
  Pair deltaCLoading;
  Pair loadedTravel;
  Pair dumpingStockpile;
  Pair dumpingCrusher;
  Pair emptyTravel;
  int reason;
  int timeInState;
  int operatorScorecard;
}

class Pair<T1, T2> {
  Pair(this.a, this.b);
  T1 a;
  T2 b;
}

class Truck {
  Truck(this.truckName, this.location);
  String truckName;
  String location;
}

class Operator {
  Operator(this.avatar, this.name);
  FmiAvatar avatar;
  String name;
}
```

**Required function and variables**
```dart
@override
void initState() {
    super.initState();
    _truckShiftData = getShiftData();
    _truckShiftDataSource = TruckShiftDataSource(_truckShiftData);
}

late List<TruckShift> _truckShiftData;
late TruckShiftDataSource _truckShiftDataSource;
```

`  `
`  `