import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/providers/colors_fonts.dart';
import 'package:new_project/providers/video_player_provider.dart';
import 'package:provider/provider.dart';
// import 'package:video_player/video_player.dart';
// import 'package:vimeo_video_player/vimeo_video_player.dart';
import '../model/video_player_model.dart';
import '../widgets/video_player_widget.dart';

class CapMarketingPage extends StatelessWidget {
  const CapMarketingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _videoPlayer = Provider.of<VideoPlayerProvider>(context);
    // String videoUrl = 'https://videojs-vr.netlify.app/samples/eagle-360.mp4';
    // final String _vimeoVideoUrl = 'https://vimeo.com/70591644';
    final List<VideoModel> videos = [
      VideoModel(
        title: 'Unknown videos 1',
        videoUrl:
            'https://videojs-vr.netlify.app/samples/eagle-360.mp4', // Replace with actual video URL
      ),
      // VideoModel(
      //   title: 'Unknown videos 2',
      //   videoUrl:
      //       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4', // Replace with another video URL
      // ),
      // Add more videos as needed
    ];

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                height: 30.h,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: videos.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: VideoPlayerScreen(video: videos[index]),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          onTap: () {
                            _videoPlayer.controller.play();
                          },
                          child: Text(
                            videos[index].title,
                            style: textStyle5,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // SizedBox(height: 30.h),
              // Center(
              //   child: Padding(
              //     padding: EdgeInsets.only(left: 20.w, right: 20.w),
              //     child: VimeoVideoPlayer(url: _vimeoVideoUrl),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
