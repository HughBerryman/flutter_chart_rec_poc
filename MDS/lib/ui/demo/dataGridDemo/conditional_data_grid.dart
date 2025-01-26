import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ConditionalDataGrid extends StatefulWidget {
  const ConditionalDataGrid({super.key});
  @override
  State<ConditionalDataGrid> createState() => _ConditionalDataGridState();
}

class _ConditionalDataGridState extends State<ConditionalDataGrid> {
  @override
  void initState() {
    _truckShiftData = getShiftData();
    _truckShiftDataSource = TruckShiftDataSource(_truckShiftData);
    super.initState();
  }

  late List<TruckShift> _truckShiftData;
  late TruckShiftDataSource _truckShiftDataSource;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(FMIThemeBase.basePaddingMedium),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(FMIThemeBase.baseBorderRadiusXLarge),
              topLeft: Radius.circular(FMIThemeBase.baseBorderRadiusXLarge))),
      child: SfDataGrid(
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
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeAltSurfaceInverseOnAltSurface,
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
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeAltSurfaceInverseOnAltSurface,
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
                    color: Theme.of(context)
                        .colorScheme
                        .fmiBaseThemeAltSurfaceInverseOnAltSurface,
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
