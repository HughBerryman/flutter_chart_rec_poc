import 'fmi_drawer_item.dart';

class FmiDrawerExpansionTile extends FmiDrawerItem {
  final List<FmiDrawerItem> children;
  final int selectedIndex;

  FmiDrawerExpansionTile({
    this.children = const [],
    super.enabled = true,
    required this.selectedIndex,
    required super.label,
    super.leading,
  });
}
