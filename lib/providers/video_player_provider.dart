// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import '../model/video_player_model.dart';

// class VideoProvider extends ChangeNotifier {
//   VideoPlayerModel? _videoPlayerModel;
//   bool _isVideoInitialized = false;

//   bool get isVideoInitialized => _isVideoInitialized;

//   void initialize(String videoUrl) {
//     _videoPlayerModel = VideoPlayerModel(videoUrl);
//     _isVideoInitialized = true;
//     notifyListeners();
//   }

//   VideoPlayerModel? get videoPlayerModel => _videoPlayerModel;

//   @override
//   void dispose() {
//     _videoPlayerModel?.dispose();
//     super.dispose();
//   }
// }

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerProvider extends ChangeNotifier {
  late VideoPlayerController _controller;

  VideoPlayerProvider(String videoUrl) {
    _controller = VideoPlayerController.networkUrl(Uri.parse(videoUrl))
      ..initialize().then((_) {
        notifyListeners();
      });
  }

  VideoPlayerController get controller => _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
