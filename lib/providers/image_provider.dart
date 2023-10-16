import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart';

// class ImageProvider extends ChangeNotifier {
//   XFile? _imageFile;

//   XFile? get imageFile => _imageFile;

//   Future<void> pickImage(ImageSource source) async {
//     final pickedImage = await ImagePicker().pickImage(source: source);
//     if (pickedImage != null) {
//       _imageFile = pickedImage;
//       notifyListeners();
//     }
//   }
// }

class ProfileImageModel extends ChangeNotifier {
  File? _image;

  File? get image => _image;

  void setImage(File image) {
    _image = image;
    notifyListeners();
  }
}
