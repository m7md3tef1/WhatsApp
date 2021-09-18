import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/Screen/HomeScreen.dart';
import 'package:whats_app/Screen/SplashScreen.dart';
import 'package:whats_app/View/CameraPreview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'App_localization.dart';
void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(WhatsApp());
}
class WhatsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.id,
supportedLocales: [
  Locale('en','US'),
  Locale('ar','EG'),
],
        localizationsDelegates: [
          AppLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (locale,supportedLocales){
          for(var supportedLocale in supportedLocales ){
            if(supportedLocale.languageCode==locale.languageCode &&
            supportedLocale.countryCode==locale.countryCode
            ){
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        routes: {
          SplashScreen.id: (context) => SplashScreen(),
          HomeScreen.id :(context)=>HomeScreen(),
        },
      ),
    );
  }
}
