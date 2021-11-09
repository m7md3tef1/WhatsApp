import 'package:flutter/material.dart';
import 'package:whats_app/View/CameraPreview.dart';
import 'package:whats_app/View/ChatsView.dart';
import 'package:whats_app/View/callsviews.dart';
import 'package:whats_app/View/statusView.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);
  static String id = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Fourth_string').tr(),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("Eighth_string").tr()),
                PopupMenuItem(child: Text('Ninth_string').tr()),
                PopupMenuItem(child: Text('tenth_string').tr()),
                PopupMenuItem(child: Text('Eleventh_string').tr()),
                PopupMenuItem(child: Text('twelve_string').tr()),
                PopupMenuItem(child:
                InkWell(
                    onTap: ()
                    {
                      context.locale=Locale('en',);
                    },
                    child: Text('English')),),
                PopupMenuItem(child:
                InkWell(
                    onTap: (){
                      context.locale=Locale('ar',);
                    },
                    child: Text('عربي'))),
              ];

            })
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.grey,
            tabs: [
              Icon(Icons.camera_alt),
              Text("first_string").tr(),
              Text("second_string").tr(),
              Text("third_string").tr(),
            ],

          ),
        ),
     body: TabBarView(
       children: [
         CameraView(),
         ChatsView(),
         StatusView(),
         CallsView(),
       ],
     ),
      ),
    );
  }
}
