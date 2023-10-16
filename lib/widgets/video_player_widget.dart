// import 'package:flutter/material.dart';
// import 'package:new_project/providers/colors_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:video_player/video_player.dart';

// import '../providers/video_player_provider.dart';

// class VideoPlayerWidget extends StatefulWidget {
//   final String videoUrl;
//   const VideoPlayerWidget({super.key, required this.videoUrl});

//   @override
//   State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
// }

// class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
//   @override
//   Widget build(BuildContext context) {
//     // @override
//     // void dispose() {
//     //   videoProvider.dispose();
//     //   super.dispose();
//     // }

//     return Consumer<VideoProvider>(
//       builder: (context, videoProvider, _) {
//         final videoPlayerModel = videoProvider.videoPlayerModel;
//         if (videoPlayerModel == null) {
//           return Center(
//             child: CircularProgressIndicator(
//               color: mainColor,
//             ),
//           ); // Loading indicator
//         }
//         return AspectRatio(
//           aspectRatio: videoPlayerModel.controller.value.aspectRatio,
//           child: VideoPlayer(videoPlayerModel.controller),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:new_project/providers/colors_fonts.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../model/video_player_model.dart';
import '../providers/video_player_provider.dart';

class VideoPlayerScreen extends StatelessWidget {
  // final String videoUrl =
  //     'https://videojs-vr.netlify.app/samples/eagle-360.mp4'; // Replace with actual video URL
  final VideoModel video;

  // ignore: prefer_const_constructors_in_immutables
  VideoPlayerScreen({required this.video});

  @override
  Widget build(BuildContext context) {
    return
        // ChangeNotifierProvider(
        //   create: (_) => VideoPlayerProvider(video.videoUrl),
        Container(
      child: Consumer<VideoPlayerProvider>(
        builder: (context, videoProvider, _) {
          final controller = videoProvider.controller;
          return controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                )
              : Center(
                  child: CircularProgressIndicator(
                    // backgroundColor: blackColor,
                    color: mainColor,
                  ),
                );
        },
      ),
    );
    // );
  }
}
