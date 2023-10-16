import 'package:flutter/foundation.dart';

class CurrentIndex with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void swipIndex(index) {
    _currentIndex = index;
    notifyListeners();
  }
}
