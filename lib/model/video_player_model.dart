// import 'package:video_player/video_player.dart';

// class VideoPlayerModel {
//   late VideoPlayerController controller;

//   VideoPlayerModel(String videoUrl) {
//     // ignore: deprecated_member_use
//     controller = VideoPlayerController.networkUrl(Uri.parse(videoUrl))
//       ..initialize().then((_) {
//         // Ensure the first frame is shown and the video starts playing
//         controller.play();
//       });
//   }

//   void dispose() {
//     controller.dispose();
//   }
// }
class VideoModel {
  final String title;
  final String videoUrl;

  VideoModel({required this.title, required this.videoUrl});
}
