import 'package:flutter/material.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({Key key}) : super(key: key);

  @override
  _ChatsViewState createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Text('Chats'),
    );
  }
}
