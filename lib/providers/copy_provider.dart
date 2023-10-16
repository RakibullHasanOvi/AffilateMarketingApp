import 'package:flutter/material.dart';

class CopyProvider extends ChangeNotifier {
  String _textToCopy = '';

  String get textToCopy => _textToCopy;

  void updateTextToCopy(String text) {
    _textToCopy = text;
    notifyListeners();
  }
}
