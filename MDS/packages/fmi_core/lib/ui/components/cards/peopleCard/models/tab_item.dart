import 'package:fmi_core/fmi_core.dart';

class TabItem {
  String label;
  String noContentMessage;
  List<Employee>? employees;
  TabButton? button;
  bool? displayBadge;

  TabItem(
      {required this.label,
      required this.noContentMessage,
      this.employees,
      this.button,
      this.displayBadge = false});
}
