

import 'package:badges/badges.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:whats_app/App_localization.dart';
import 'package:whats_app/Models/statusModel.dart';
import 'package:whats_app/Widgets/StatusWidgets.dart';
import 'package:whats_app/View/CameraPreview.dart';

class StatusView extends StatefulWidget {
  const StatusView({Key key}) : super(key: key);

  @override
  _StatusViewState createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  final StoryController controller = StoryController();

  List<StatusModel>Status=[
    StatusModel(
      name: 'Mohamed Atef',
      time: '23 minutes',
      items:[StoryItem(
          Container(
            color: Colors.red,
            child: Center(child: Text('Hello Khalifa',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20,
                color: Colors.black87),)),
          ),
          duration: Duration(seconds: 3)),
        StoryItem(
          Container(
            color: Colors.blue,
            child: Center(child: Text('Hello Khalifa',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20,
                color: Colors.black87),)),
          ),
          duration: Duration(seconds: 3)),],
    ),
    StatusModel(
      name: 'Al Hussein',
      time: '28 minutes',
      items: [StoryItem(
          Container(
            color: Colors.red,
            child: Center(child: Text('Hello Al Hussein',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20,
                color: Colors.black87),)),
          ),
          duration: Duration(seconds: 3)),
        StoryItem(
            Container(
              color: Colors.deepPurple,
              child: Center(child: Text('Hello Al Hussein',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20,
                  color: Colors.black87),)),
            ),
            duration: Duration(seconds: 3)),],
    ),
    StatusModel(
      name: 'Mohamed Ayman',
      time: '50 minutes',
     items: [StoryItem(
          Container(
            color: Colors.orangeAccent,
            child: Center(child: Text('Hello Mohamed Ayman',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20,
                color: Colors.black87),)),
          ),
          duration: Duration(seconds: 3)),
        StoryItem(
            Container(
              color: Colors.blueAccent,
              child: Center(child: Text('Hello Mohamed Ayman',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20,
                  color: Colors.black87),)),
            ),
            duration: Duration(seconds: 3)),],
    ),
    StatusModel(
      name: 'E AbdelWahab',
      time: 'Today 4.11 AM',
      items: [StoryItem(
          Container(
            color: Colors.teal,
            child: Center(child: Text('Hello E AbdelWahab',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20,
                color: Colors.black87),)),
          ),
          duration: Duration(seconds: 3)),
        StoryItem(
            Container(
              color: Colors.red,
              child: Center(child: Text('Hello E AbdelWahab',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20,
                  color: Colors.black87),)),
            ),
            duration: Duration(seconds: 3)),],
    ),
    StatusModel(
      name: 'Zezo',
      time: 'Today 2.31 AM',
      items: [StoryItem(
          Container(
            color: Colors.red,
            child: Center(child: Text('Hello Zezo',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20,
                color: Colors.black87),)),
          ),
          duration: Duration(seconds: 3)),
        StoryItem(
            Container(
              color: Colors.brown,
              child: Center(child: Text('Hello Zezo',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20,
                  color: Colors.black87),)),
            ),
            duration: Duration(seconds: 3)),],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: Stack(
          children:[
            Positioned(
              bottom: 0,
              right: 2,
              child: Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 20,
                        child: Icon(
                          Icons.edit,
                          size: 23,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.teal[200],
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            CameraView(),
                        ));
                      },
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ]
              ),
            ),
          ]
        ),
        body: ListView(
          children: [
            //my status
            ListTile(
              leading: Badge(
                badgeColor: Colors.teal[200],
                badgeContent: Icon(Icons.add,size: 18,color: Colors.white,),
                position: BadgePosition(end: -4,bottom: -3),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                ),
              ),
              title: Text(
                Applocalization.of(context).translate('Fifth_string'),
                style: TextStyle(color: Colors.black87),
              ),
              subtitle: Text(
                Applocalization.of(context).translate('Sixth_string'),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            //text
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 12, 0, 12),
                child: Row(
                  children: [
                    Text(
                      Applocalization.of(context).translate('Seventh_string'),
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height * .90,
              width: 100,
              child: ListView.builder(
                  itemCount: Status.length,
                  itemBuilder: (context,index){
                return StatusWidget(
                  statusModel: Status[index] ,
                );
              }),
            )
          ],
        ));
  }
}
