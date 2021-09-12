import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/Screen/HomeScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);
  static String id ='SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 void initState(){
   super.initState();
   Timer(Duration(seconds: 3),(){
     Navigator.popAndPushNamed(context, HomeScreen.id);
   } );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [ Align(
        alignment: Alignment.center,
          child: Image.asset('image/download (1).jpg',height: 90,) , ),
      Padding(
        padding:  EdgeInsets.only(bottom: 33.h),
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Text('from',style: TextStyle(color: Colors.black54),)),
      ),
        Padding(
          padding:  EdgeInsets.all(5.0.h),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Text('F A C E B O O K',style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),)),
        ),
        ],

      ),
    );
  }
}

