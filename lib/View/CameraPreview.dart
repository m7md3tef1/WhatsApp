import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/View/imageScreen.dart';
import 'package:whats_app/View/videoView.dart';

List<CameraDescription> cameras = [];

class CameraView extends StatefulWidget {
  @override
  _CameraViewState createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  CameraController cameraController;
  Future<void> cameraFuture;
  var v;
  @override
  void initState() {
    super.initState();
    cameraController = CameraController(cameras[0], ResolutionPreset.high);
    cameraFuture = cameraController.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    cameraController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: FutureBuilder(
            future: cameraFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Stack(
                  children: [
                    CameraPreview(cameraController),
                    Row(
                      children: [
                       Expanded(child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: Padding(
                               padding: const EdgeInsets.all(20.0),
                               child: Icon(
                                 Icons.flash_off,
                                 color: Colors.black,
                               ),
                             ),
                           ),
                           Align(
                             alignment: Alignment.bottomCenter,
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: GestureDetector(
                                 onLongPress: () async {
                                   await cameraController.startVideoRecording();
                                 },
                                 onLongPressUp: () async {
                                   var v=  await cameraController.stopVideoRecording();
                                   Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context)
                                       => VideoView(path: v.path,)));
                                 },
                                 onTap: () async {
                                   var image =
                                   await cameraController.takePicture();
                                   Navigator.push(
                                       context,
                                       MaterialPageRoute(
                                           builder: (context) => ImageScreen(
                                             path: image.path,
                                           )));
                                 },
                                 child: Container(
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                     border: Border.all(color: Colors.black),
                                   ),
                                   child: Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(50),
                                       border: Border.all(color: Colors.black),
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
                           ),
                           Align(
                             alignment: Alignment.bottomRight,
                             child: Padding(
                               padding: const EdgeInsets.all(20.0),
                               child: Icon(
                                 Icons.flip_camera_ios_rounded,
                                 color: Colors.black,
                               ),
                             ),
                           ),
                         ],
                       ))
                      ],
                    )
                  ],
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
