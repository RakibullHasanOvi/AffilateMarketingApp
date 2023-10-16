import 'package:flutter/foundation.dart';

class ObSecureText with ChangeNotifier {
  bool _obsecure = true;

  bool get obsecuretext => _obsecure;

  void toggleObsecureText() {
    _obsecure = !_obsecure;
    notifyListeners();
  }
}
