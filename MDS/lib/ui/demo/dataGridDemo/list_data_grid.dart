import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ListDataGrid extends StatefulWidget {
  const ListDataGrid({super.key});

  @override
  State<ListDataGrid> createState() => _ListDataGridState();
}

class _ListDataGridState extends State<ListDataGrid> {
  @override
  void initState() {
    super.initState();
    _employeeData = getCostData();
    _employeeDataSource = HFMListDataSource(_employeeData);
    panelOpen = frontPanelVisible.value;
    frontPanelVisible.addListener(_subscribeToValueNotifier);
  }

  late List<HFMProdCostList> _employeeData;
  late HFMListDataSource _employeeDataSource;
  final DataGridController _controller = DataGridController();

  final ValueNotifier<bool> frontPanelVisible = ValueNotifier<bool>(true);
  void _subscribeToValueNotifier() => panelOpen = frontPanelVisible.value;
  bool panelOpen = false;

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
  Future onCellSubmit(DataGridRow dataGridRow, RowColumnIndex rowColumnIndex,
      GridColumn column) async {
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

enum ColumnName {
  oneQ,
  twoQ,
  threeQ,
  fourQ,
}
