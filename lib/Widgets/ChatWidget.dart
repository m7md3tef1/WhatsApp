import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/Models/ChatsModel.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ChatWidget extends StatelessWidget {
  ChatModel chatModel = ChatModel();
  ChatWidget({this.chatModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(chatModel.name),
      subtitle: Row(
        children: [IconSeen(), Text(chatModel.subTitle)],
      ),
      trailing: Text(chatModel.time),
      leading: CircleAvatar(
          radius: 35.h,
          backgroundColor: Colors.grey[300],
          child: chatModel.isGroup
              ? SvgPicture.asset('image/groups_black_24dp (1).svg',height: 30.h,)
              : SvgPicture.asset('image/person_black_24dp (1).svg',height: 30.h,)),
    );
  }

  Widget IconSeen() {
    if (chatModel.isRead && chatModel.isSeen) {
      return Icon(
        Icons.done_all,
        color: Colors.blueAccent,
      );
    } else if (chatModel.isRead == false && chatModel.isSeen == false) {
      return Icon(Icons.done);
    } else if (chatModel.isRead == true && chatModel.isSeen == false) {
      return Icon(
        Icons.done_all,
        color: Colors.grey,
      );
    } else {
      return Icon(
        Icons.done_all,
        color: Colors.grey,
      );
    }
  }
}
