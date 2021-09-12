import 'dart:io';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class VideoView extends StatefulWidget {
static String id ='VideoView';
String path;
VideoView({this.path});
  @override
  _VideoViewState createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(File(widget.path))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white70 ,
      body: Column(
        children: [
          Container(
              width: double.infinity,
              height: 570.h,
              child: VideoPlayer(_controller)),
          InkWell(
            onTap: (){
              _controller.play();
            },
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child:  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white),
                      ),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ),

              ),
            ),
          ) ],
      ),
    );
  }
}
