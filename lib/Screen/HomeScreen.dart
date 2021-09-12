import 'package:flutter/material.dart';
import 'package:whats_app/App_localization.dart';
import 'package:whats_app/View/CameraPreview.dart';
import 'package:whats_app/View/ChatsView.dart';
import 'package:whats_app/View/callsviews.dart';
import 'package:whats_app/View/statusView.dart';

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
          title: Text(Applocalization.of(context).translate('Fourth_string')),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text(Applocalization.of(context).translate('Eighth_string')),),
                PopupMenuItem(child: Text(Applocalization.of(context).translate('Ninth_string')),),
                PopupMenuItem(child: Text(Applocalization.of(context).translate('tenth_string')),),
                PopupMenuItem(child: Text(Applocalization.of(context).translate('Eleventh_string')),),
                PopupMenuItem(child: Text(Applocalization.of(context).translate('twelve_string')),),
              ];

            })
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.grey,
            tabs: [
              Icon(Icons.camera_alt),
              Text(Applocalization.of(context).translate('first_string')),
              Text(Applocalization.of(context).translate('second_string')),
              Text(Applocalization.of(context).translate('third_string')),
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
