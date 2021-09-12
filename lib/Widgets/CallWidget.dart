import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/Models/CallsModel.dart';
import 'package:whats_app/Models/ChatsModel.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CallsWidget extends StatelessWidget {
  CallsModel callsModel = CallsModel();
  CallsWidget({this.callsModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(callsModel.name),
      subtitle: Row(
        children: [
          iconcall()
          , Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(callsModel.time),
          )],
      ),
      trailing: Icon(Icons.phone),
      leading: CircleAvatar(
          radius: 35.h,
          backgroundColor: Colors.grey[300],
          ),
    );
  }
  iconcall(){
    if(callsModel.icall==true){
      return Icon(Icons.call_made_rounded,size: 16.h,color: Colors.green,);
    }
    if(callsModel.icall==false){
      return Icon(Icons.call_received,size: 16.h,color: Colors.red,);
    }
  }
  
}
