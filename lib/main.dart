import 'package:camera/camera.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/Screen/HomeScreen.dart';
import 'package:whats_app/Screen/SplashScreen.dart';
import 'package:whats_app/View/CameraPreview.dart';

void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
          supportedLocales: [
            Locale('en',''),
            Locale('ar',''),
          ],
          path: 'lag',
          fallbackLocale:  Locale('en',''),
          child: WhatsApp()));
}
class WhatsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.id,
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        routes: {
          SplashScreen.id: (context) => SplashScreen(),
          HomeScreen.id :(context)=>HomeScreen(),
        },
      ),
    );
  }
}
