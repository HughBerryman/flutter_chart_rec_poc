import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class SingleSelectionItemSearchResultsListWidget extends StatefulWidget {
  final String searchTerm;
  final List<GenericTableItems> allItems;
  final List<GenericTableItems> filteredItems;
  final Function(GenericTableItem selectedItem) onItemSelected;
  final GenericLookupDataOptions options;
  final bool supportOnline;
  final String dataSource;
  final bool useTopPadding;

  const SingleSelectionItemSearchResultsListWidget({
    Key? key,
    required this.searchTerm,
    required this.allItems,
    required this.filteredItems,
    required this.onItemSelected,
    required this.options,
    required this.dataSource,
    this.supportOnline = false,
    this.useTopPadding = false,
  }) : super(key: key);

  @override
  State<SingleSelectionItemSearchResultsListWidget> createState() =>
      _SingleSelectionItemSearchResultsListWidgetState();
}

class _SingleSelectionItemSearchResultsListWidgetState
    extends State<SingleSelectionItemSearchResultsListWidget> {
  final DataGridController dataGridController = DataGridController();

  @override
  Widget build(BuildContext context) {
    Widget result;

    if (widget.filteredItems.isEmpty && widget.searchTerm.isEmpty) {
      result = const FmiStartSearchWidget(isFullPage: true);
    } else if (widget.filteredItems.isEmpty) {
      result = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              FontAwesomeIcons.solidFileSlash,
              size: FMIThemeBase.baseIconLarge,
            ),
            Padding(
              padding: const EdgeInsets.only(top: FMIThemeBase.baseGapLarge),
              child: Text(
                context.coreLocalize.noResultFound,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            )
          ],
        ),
      );
    } else {
      result = getTableResult();
    }

    return result;
  }

  Widget getTableResult() {
    var datagridSource = GenericLookupDataSource(
      context,
      dataGridController,
      widget.allItems,
      widget.filteredItems,
      widget.options,
      widget.supportOnline,
      widget.dataSource,
      widget.searchTerm,
    );

    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
            inputDecorationTheme:
                Theme.of(context).inputDecorationTheme.copyWith(filled: false)),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(
                    top: widget.useTopPadding
                        ? FMIThemeBase.baseContainerDimension0
                        : FMIThemeBase.baseContainerDimension70),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: SfDataGridTheme(
                    data: SfDataGridThemeData(
                        headerColor: Theme.of(context).colorScheme.surface,
                        headerHoverColor: Theme.of(context).hoverColor,
                        gridLineStrokeWidth: FMIThemeBase.baseBorderWidthThin),
                    child: SfDataGrid(
                      source: datagridSource,
                      columns: getColumns(),
                      selectionMode: SelectionMode.single,
                      loadMoreViewBuilder:
                          (BuildContext context, LoadMoreRows loadMoreRows) {
                        GenericLookupDataSource.page++;
                        if (GenericLookupDataSource.more == true) {
                          Future<String> loadRows() async {
                            await loadMoreRows();
                            return Future<String>.value('Completed');
                          }

                          return FutureBuilder<String>(
                              initialData: 'loading',
                              future: loadRows(),
                              builder: (context, snapShot) {
                                if (snapShot.data == 'loading') {
                                  return Container(
                                      height:
                                          FMIThemeBase.baseContainerDimension70,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                      ),
                                      alignment: Alignment.center,
                                      child: const CircularProgressIndicator());
                                } else {
                                  return SizedBox.fromSize(size: Size.zero);
                                }
                              });
                        } else {
                          return FutureBuilder<String>(
                            builder: (context, snapshot) {
                              return SizedBox.fromSize(size: Size.zero);
                            },
                            future: null,
                          );
                        }
                      },
                      onCellTap: ((details) {
                        if (details.rowColumnIndex.rowIndex != 0) {
                          final DataGridRow row =
                              dataGridController.selectedRows[
                                  details.rowColumnIndex.rowIndex - 1];
                          int index =
                              dataGridController.selectedRows.indexOf(row);

                          var item = widget.filteredItems[index].columns;

                          GenericTableItem result;

                          if (widget.supportOnline ||
                              widget.options.query != null) {
                            var id = item.firstWhere(
                                (element) => element.id == widget.options.id);
                            var value = item.firstWhere((element) =>
                                element.id == widget.options.value);

                            result = GenericTableItem(
                                id: id.value,
                                value: value.value,
                                isNumeric: value.isNumeric);
                          } else {
                            result = GenericTableItem(
                                id: item.first.id,
                                value: item.first.value,
                                isNumeric: item.first.isNumeric);
                          }

                          widget.onItemSelected(result);
                        }
                      }),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<GridColumn> getColumns() {
    List<GridColumn> gridColumns = <GridColumn>[];
    if (widget.filteredItems.isNotEmpty) {
      for (var display in widget.options.display) {
        GridColumn gridColumn = GridColumn(
          allowEditing: false,
          columnWidthMode: ColumnWidthMode.fill,
          columnName: display.field.toString(),
          label: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: FMIThemeBase.basePadding4,
                  left: FMIThemeBase.basePadding4),
              child: Text(
                display.title.toString(),
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
          ),
        );
        gridColumns.add(gridColumn);
      }
    }
    return gridColumns;
  }
}
