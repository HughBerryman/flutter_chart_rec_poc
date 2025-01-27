import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:poc/models/navigation/models.dart';
import 'package:poc/services/interfaces/navigation_service.dart';

class NavigationServiceImpl implements NavigationService {
  @override
  Future<List<CategorySourceModel>> getNavigationMenu() async {
    var response =
        await rootBundle.loadString('lib/assets/content/page_manifest.json');
    var json = jsonDecode(response);

    return List<CategorySourceModel>.from(
        json.map((item) => CategorySourceModel.fromJson(item)));
  }
}
