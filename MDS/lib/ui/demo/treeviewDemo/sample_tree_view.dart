import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

class SampleTreeView extends StatefulWidget {
  const SampleTreeView({super.key});

  @override
  State<SampleTreeView> createState() => _SampleTreeViewState();
}

class _SampleTreeViewState extends State<SampleTreeView> {
  final TreeViewController treeController = TreeViewController();
  final ScrollController verticalController = ScrollController();

  TreeViewNode<SampleTreeObject>? _selectedNode;
  final ScrollController _horizontalController = ScrollController();
  final List<TreeViewNode<SampleTreeObject>> _tree =
      <TreeViewNode<SampleTreeObject>>[
    TreeViewNode<SampleTreeObject>(SampleTreeObject('README.md', 'subtitle')),
    TreeViewNode<SampleTreeObject>(
        SampleTreeObject('analysis_options.yaml', 'subtitle')),
    TreeViewNode<SampleTreeObject>(
      SampleTreeObject('lib', 'subtitle'),
      children: <TreeViewNode<SampleTreeObject>>[
        TreeViewNode<SampleTreeObject>(
          SampleTreeObject('src', 'subtitle'),
          children: <TreeViewNode<SampleTreeObject>>[
            TreeViewNode<SampleTreeObject>(
              SampleTreeObject('common', 'subtitle'),
              children: <TreeViewNode<SampleTreeObject>>[
                TreeViewNode<SampleTreeObject>(
                    SampleTreeObject('span.dart', 'subtitle')),
              ],
            ),
            TreeViewNode<SampleTreeObject>(
              SampleTreeObject('table_view', 'subtitle'),
              children: <TreeViewNode<SampleTreeObject>>[
                TreeViewNode<SampleTreeObject>(
                    SampleTreeObject('table_cell.dart', 'subtitle')),
                TreeViewNode<SampleTreeObject>(
                    SampleTreeObject('table_delegate.dart', 'subtitle')),
                TreeViewNode<SampleTreeObject>(
                    SampleTreeObject('table_span.dart', 'subtitle')),
                TreeViewNode<SampleTreeObject>(
                    SampleTreeObject('table.dart', 'subtitle')),
              ],
            ),
            TreeViewNode<SampleTreeObject>(
              SampleTreeObject('tree_view', 'subtitle'),
              children: <TreeViewNode<SampleTreeObject>>[
                TreeViewNode<SampleTreeObject>(
                    SampleTreeObject('render_tree.dart', 'subtitle')),
                TreeViewNode<SampleTreeObject>(
                    SampleTreeObject('tree_core.dart', 'subtitle')),
                TreeViewNode<SampleTreeObject>(
                    SampleTreeObject('tree_delegate.dart', 'subtitle')),
                TreeViewNode<SampleTreeObject>(
                    SampleTreeObject('tree_span.dart', 'subtitle')),
                TreeViewNode<SampleTreeObject>(
                    SampleTreeObject('tree.dart', 'subtitle')),
              ],
            ),
          ],
        ),
        TreeViewNode<SampleTreeObject>(
            SampleTreeObject('two_dimensional_scrollables.dart', 'subtitle')),
      ],
    ),
    TreeViewNode<SampleTreeObject>(
        SampleTreeObject('pubspec.lock', 'subtitle')),
    TreeViewNode<SampleTreeObject>(
        SampleTreeObject('pubspec.yaml', 'subtitle')),
    TreeViewNode<SampleTreeObject>(
      SampleTreeObject('test', 'subtitle'),
      children: <TreeViewNode<SampleTreeObject>>[
        TreeViewNode<SampleTreeObject>(
          SampleTreeObject('common', 'subtitle'),
          children: <TreeViewNode<SampleTreeObject>>[
            TreeViewNode<SampleTreeObject>(
                SampleTreeObject('span_test.dart', 'subtitle')),
          ],
        ),
        TreeViewNode<SampleTreeObject>(
          SampleTreeObject('table_view', 'subtitle'),
          children: <TreeViewNode<SampleTreeObject>>[
            TreeViewNode<SampleTreeObject>(
                SampleTreeObject('table_cell_test.dart', 'subtitle')),
            TreeViewNode<SampleTreeObject>(
                SampleTreeObject('table_delegate_test.dart', 'subtitle')),
            TreeViewNode<SampleTreeObject>(
                SampleTreeObject('table_span_test.dart', 'subtitle')),
            TreeViewNode<SampleTreeObject>(
                SampleTreeObject('table_test.dart', 'subtitle')),
          ],
        ),
        TreeViewNode<SampleTreeObject>(
          SampleTreeObject('tree_view', 'subtitle'),
          children: <TreeViewNode<SampleTreeObject>>[
            TreeViewNode<SampleTreeObject>(
                SampleTreeObject('render_tree_test.dart', 'subtitle')),
            TreeViewNode<SampleTreeObject>(
                SampleTreeObject('tree_core_test.dart', 'subtitle')),
            TreeViewNode<SampleTreeObject>(
                SampleTreeObject('tree_delegate_test.dart', 'subtitle')),
            TreeViewNode<SampleTreeObject>(
                SampleTreeObject('tree_span_test.dart', 'subtitle')),
            TreeViewNode<SampleTreeObject>(
                SampleTreeObject('tree_test.dart', 'subtitle')),
          ],
        ),
      ],
    ),
  ];

  Widget _treeNodeBuilder(
    BuildContext context,
    TreeViewNode<SampleTreeObject> node,
    AnimationStyle toggleAnimationStyle,
  ) {
    final bool isParentNode = node.children.isNotEmpty;
    final BorderSide border = BorderSide(
      width: FMIThemeBase.baseBorderWidthThin,
      color: Theme.of(context)
          .colorScheme
          .onSurfaceVariant
          .withOpacity(FMIThemeBase.baseOpacity20),
    );

    return Row(
      children: <Widget>[
        SizedBox(
            width: FMIThemeBase.baseGap6 * node.depth! + FMIThemeBase.baseGap6),
        DecoratedBox(
          decoration: BoxDecoration(
            border: node.parent != null
                ? Border(left: border, bottom: border)
                : null,
          ),
          child: const SizedBox(
              height: FMIThemeBase.baseContainerDimension50,
              width: FMIThemeBase.baseGap6),
        ),
        if (isParentNode)
          FaIcon(
            node.isExpanded
                ? FontAwesomeIcons.chevronDown
                : FontAwesomeIcons.chevronRight,
            size: FMIThemeBase.baseIconSmall,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        const SizedBox(width: FMIThemeBase.baseGap4),
        if (isParentNode)
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: FMIThemeBase.basePadding8),
                child: FaIcon(
                  FontAwesomeIcons.folder,
                  size: FMIThemeBase.baseIconSmall,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              _getText(node),
            ],
          ),
        if (!isParentNode)
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.files,
                size: FMIThemeBase.baseIconSmall,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              _getText(node),
            ],
          )
      ],
    );
  }

  Map<Type, GestureRecognizerFactory> _getTapRecognizer(
    TreeViewNode<SampleTreeObject> node,
  ) {
    return <Type, GestureRecognizerFactory>{
      TapGestureRecognizer:
          GestureRecognizerFactoryWithHandlers<TapGestureRecognizer>(
        () => TapGestureRecognizer(),
        (TapGestureRecognizer t) => t.onTap = () {
          setState(() {
            treeController.toggleNode(node);
            _selectedNode = node;
          });
        },
      ),
    };
  }

  Widget _getTree() {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Scrollbar(
        controller: _horizontalController,
        thumbVisibility: true,
        child: Scrollbar(
          controller: verticalController,
          thumbVisibility: true,
          child: TreeView<SampleTreeObject>(
            controller: treeController,
            verticalDetails: ScrollableDetails.vertical(
              controller: verticalController,
            ),
            horizontalDetails: ScrollableDetails.horizontal(
              controller: _horizontalController,
            ),
            tree: _tree,
            onNodeToggle: (TreeViewNode<SampleTreeObject> node) {
              setState(() {
                _selectedNode = node;
              });
            },
            treeNodeBuilder: _treeNodeBuilder,
            treeRowBuilder: (TreeViewNode<SampleTreeObject> node) {
              if (_selectedNode == node) {
                return TreeRow(
                  extent: const FixedTreeRowExtent(
                    FMIThemeBase.baseContainerDimension50,
                  ),
                  recognizerFactories: _getTapRecognizer(node),
                  backgroundDecoration: TreeRowDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(FMIThemeBase.baseOpacity10),
                  ),
                );
              }
              return TreeRow(
                extent: const FixedTreeRowExtent(
                  FMIThemeBase.baseContainerDimension50,
                ),
                recognizerFactories: _getTapRecognizer(node),
              );
            },
            indentation: TreeViewIndentationType.none,
          ),
        ),
      ),
    );
  }

  Widget _getText(node) {
    return Padding(
      padding: const EdgeInsets.only(left: FMIThemeBase.basePadding8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            node.content.title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          Text(
            node.content.subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    verticalController.dispose();
    _horizontalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> selectedChildren = <Widget>[];
    if (_selectedNode != null) {
      selectedChildren.addAll(<Widget>[
        const Spacer(),
        FaIcon(
          _selectedNode!.children.isEmpty
              ? FontAwesomeIcons.folderOpen
              : FontAwesomeIcons.folder,
          size: FMIThemeBase.baseIconMedium,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: FMIThemeBase.basePadding8,
          ),
          child: Text(_selectedNode!.content.title),
        ),
        const Spacer(),
      ]);
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const FaIcon(FontAwesomeIcons.arrowLeft)),
            const Expanded(child: Text('Sample Tree View')),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: FMIThemeBase.basePadding8),
            child: FilledButton.icon(
                icon: const FaIcon(FontAwesomeIcons.xmark),
                label: const Text('Close Demo'),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ],
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: FMIThemeBase.basePadding12),
          child: Row(children: <Widget>[
            Expanded(
              child: _getTree(),
            ),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Center(
                  child: Column(
                    children: selectedChildren,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class SampleTreeObject {
  final String title;
  final String subtitle;

  SampleTreeObject(this.title, this.subtitle);
}
