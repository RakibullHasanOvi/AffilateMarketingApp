import 'package:chewie/chewie.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/providers/colors_fonts.dart';
import 'package:video_player/video_player.dart';

class Tablet extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _TabletState createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  late List<VideoInfo> videos;
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    videos = [
      VideoInfo(
        title: "Watch the video part 1",
        subtitle: '00:01:28',
        videoPath: 'https://videojs-vr.netlify.app/samples/eagle-360.mp4',
      ),
      VideoInfo(
        title: "Watch the video part 2",
        subtitle: '00:00:04',
        videoPath:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
      // Add more video info here
    ];
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(videos[0].videoPath));
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 17.h / 9.w, // Adjust to your video's aspect ratio
      autoPlay: true,
      looping: false,
      cupertinoProgressColors: ChewieProgressColors(
        playedColor: mainColor,
      ),
      materialProgressColors: ChewieProgressColors(
        playedColor: whiteColor,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: ButtonTheme(
            child: Container(
              height: 20.h,
              color: mainColor,
            ),
          ),
          appBar: AppBar(
            centerTitle: false,
            title: Text('APP NAME', style: textStyle1),
            leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/Logo.svg'),
            ),
            actions: [
              Row(
                children: [
                  SizedBox(
                    height: 30.h,
                    width: 50.w,
                    child: SvgPicture.asset(
                      'assets/Person.svg',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: Text(
                      'Tanvir',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold, fontSize: 18.sp),
                    ),
                  )
                ],
              ),
            ],
          ),
          body: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('assets/Player.svg'),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'CAP MARKETING',
                    style: textStyle5,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 20.w),
                child: SizedBox(
                  height: 190.h,
                  child: StreamBuilder<ConnectivityResult>(
                    stream: Connectivity().onConnectivityChanged,
                    builder: (context, snapshot) {
                      if (snapshot.data == ConnectivityResult.none) {
                        // No network connectivity
                        return Center(
                          child: CircularProgressIndicator(
                            color: mainColor,
                          ),
                        );
                      } else {
                        // Network is available, display your content here
                        return videos.isEmpty
                            ? Center(
                                child:
                                    CircularProgressIndicator(color: mainColor),
                              )
                            : Chewie(
                                controller: _chewieController,
                              );
                      }
                    },
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 70.w, right: 25.w, top: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Class',
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Duration',
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: videos.length,
                  itemBuilder: (context, index) {
                    if (videos.isEmpty) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          // Dispose of the previous controller and create a new one
                          _videoPlayerController.dispose();
                          _videoPlayerController =
                              VideoPlayerController.networkUrl(
                                  Uri.parse(videos[index].videoPath));

                          _chewieController = ChewieController(
                              allowFullScreen: true,
                              videoPlayerController: _videoPlayerController,
                              aspectRatio: 17.h / 9.w,
                              autoPlay: true,
                              looping: false,
                              cupertinoProgressColors: ChewieProgressColors(
                                playedColor: mainColor,
                              ),
                              materialProgressColors: ChewieProgressColors(
                                playedColor: whiteColor,
                              ));
                          setState(
                            () {},
                          ); // Trigger a rebuild to show the new video
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 30.w, right: 30.w, top: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                videos[index].title,
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                videos[index].subtitle,
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              // ListTile(
                              //   title: Text(videos[index].title),
                              //   subtitle: Text(videos[index].subtitle),
                              // ),
                            ],
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoInfo {
  final String title;
  final String videoPath;
  final String subtitle;

  VideoInfo({
    required this.title,
    required this.videoPath,
    required this.subtitle,
  });
}
