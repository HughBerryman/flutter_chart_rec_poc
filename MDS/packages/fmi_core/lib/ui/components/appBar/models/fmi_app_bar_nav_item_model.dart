import 'package:fmi_core/fmi_core.dart';

class FmiAppBarNavItemModel {
  FmiAppBarNavItemModel({
    required this.item,
    required this.isSelected,
  });
  FmiAppBarNavItem item;
  bool isSelected;
}