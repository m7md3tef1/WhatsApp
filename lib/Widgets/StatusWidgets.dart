import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:whats_app/Models/statusModel.dart';
class StatusWidget extends StatelessWidget {

  StatusModel statusModel=StatusModel();
  StatusWidget({this.statusModel});
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
              StoryView(
                  storyItems: statusModel.items,
                  controller: controller)));
        },
        child: CircleAvatar(
          radius: 25,
        ),
      ),
      title: Text(statusModel.name,style: TextStyle(color: Colors.black87),),
      subtitle: Text(statusModel.time,style: TextStyle(color: Colors.grey),),
    );
  }
}
