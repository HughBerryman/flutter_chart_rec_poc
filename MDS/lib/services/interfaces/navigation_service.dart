import 'package:poc/models/navigation/models.dart';

abstract class NavigationService {
  Future<List<CategorySourceModel>> getNavigationMenu();
}