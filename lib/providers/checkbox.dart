import 'package:flutter/foundation.dart';

class CheckBoxProvider with ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  void tootleCheckBox() {
    _isChecked = !_isChecked;
    notifyListeners();
  }
}
