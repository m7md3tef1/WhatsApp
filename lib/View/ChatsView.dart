import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/Models/ChatsModel.dart';
import 'package:whats_app/Widgets/ChatWidget.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({Key key}) : super(key: key);

  @override
  _ChatsViewState createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  List<ChatModel> chats = [
    ChatModel(
      isSeen: false,
        name: 'Khalifa',
        time: '2.30',
        isRead: false,
        isGroup: false,
        subTitle: 'Hello Khalifa'

    ),
    ChatModel(
        isSeen: true,
        name: 'E/Adbelwahab',
        time: '3.00',
        isRead: false,
        isGroup: false,
        subTitle: 'Hello E/Abdelwahab'),
    ChatModel(
        isSeen: true,
        name: 'Bro',
        time: '3.30',
        isRead: true,
        isGroup: false,
        subTitle: 'Hello Bro'),
    ChatModel(
        isSeen: true,
        name: 'A.Mosad',
        time: '4.00',
        isRead: true,
        isGroup: false,
        subTitle: 'Hello A.Mosad'),
    ChatModel(
        isSeen: false,
        name: 'Hussein',
        time: '4.30',
        isRead: false,
        isGroup: false,
        subTitle: 'Hello Hussein'),
    ChatModel(
        isSeen: true,
        name: 'Flutter Group',
        time: '5.00',
        isRead: false,
        isGroup: true,
        subTitle: 'Hello FlutterGroup'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {},
          child: Icon(Icons.chat),
        ),
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return ChatWidget(
                chatModel: chats[index],
              );
            }));
  }
}
