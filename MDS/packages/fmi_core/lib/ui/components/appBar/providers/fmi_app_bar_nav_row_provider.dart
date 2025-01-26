import 'package:flutter/foundation.dart';

class FmiAppBarNavRowProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void updateIndex(int newValue) {
    _currentIndex = newValue;
    notifyListeners();
  }
}
