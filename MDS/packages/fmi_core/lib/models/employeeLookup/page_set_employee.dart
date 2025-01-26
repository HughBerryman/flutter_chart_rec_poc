import 'package:json_annotation/json_annotation.dart';

import 'employee.dart';

part 'page_set_employee.g.dart';

@JsonSerializable(explicitToJson: true)
class PageSetEmployee {
  List<Employee> items;
  bool more;
  int? total;

  PageSetEmployee({
    required this.items,
    this.more = false,
    this.total
  });

  factory PageSetEmployee.fromJson(Map<String, dynamic> json) => _$PageSetEmployeeFromJson(json);
  Map<String, dynamic> toJson() => _$PageSetEmployeeToJson(this);
}