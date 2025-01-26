import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

mixin EmployeeLookupMixin {
  bool getOnlineStatus({String? endpointUrlRelativePath}) {
    return endpointUrlRelativePath != null &&
        endpointUrlRelativePath.isNotEmpty;
  }

  List<Employee> getFilteredEmployees(String query, List<Employee> employees) {
    try {
      List<Employee> filteredEmployees = [];
      var lowerQuery = query.toLowerCase();
      List<String> queries = lowerQuery.trim().split(' ');

      if (queries.length == 1) {
        if (double.tryParse(query) != null) {
          var employeeID = lowerQuery.padLeft(10, '0');
          filteredEmployees = employees
              .where((employee) => employee.employeeID == employeeID)
              .toList();
        } else if (query.contains('@')) {
          filteredEmployees = employees
              .where((employee) =>
                  employee.email != null && employee.email! == lowerQuery)
              .toList();
        } else {
          filteredEmployees = employees
              .where((employee) => ((employee.firstName != null &&
                      employee.firstName!.toLowerCase().contains(lowerQuery)) ||
                  (employee.lastName != null &&
                      employee.lastName!.toLowerCase().contains(lowerQuery)) ||
                  (employee.email != null &&
                      employee.email!.toLowerCase().startsWith(lowerQuery))))
              .toList();
        }
      } else {
        var first = queries[0];
        queries.removeAt(0);
        var second = queries.join(" ");

        filteredEmployees = employees
            .where((employee) =>
                (employee.firstName != null &&
                    employee.lastName != null &&
                    ((employee.firstName!.toLowerCase().startsWith(first) &&
                            employee.lastName!
                                .toLowerCase()
                                .startsWith(second)) ||
                        (employee.firstName!.toLowerCase().startsWith(second) &&
                            employee.lastName!
                                .toLowerCase()
                                .startsWith(first)))) ||
                (employee.lastName != null &&
                    employee.lastName!.toLowerCase().contains(lowerQuery)))
            .toList();
      }

      filteredEmployees.sort((a, b) => a.displayName
          .toString()
          .toLowerCase()
          .compareTo(b.displayName.toString().toLowerCase()));

      return filteredEmployees;
    } catch (ex) {
      debugPrint('ERROR: $ex');
    }
    return [];
  }
}
