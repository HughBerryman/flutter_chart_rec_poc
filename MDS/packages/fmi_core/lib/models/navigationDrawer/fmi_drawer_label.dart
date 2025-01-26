import 'fmi_drawer_item.dart';

class FmiDrawerLabel extends FmiDrawerItem {
  final bool hasDivider;

  FmiDrawerLabel({
    required super.label,
    this.hasDivider = false,
  });
}
