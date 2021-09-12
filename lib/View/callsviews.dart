import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/Models/CallsModel.dart';
import 'package:whats_app/Models/ChatsModel.dart';
import 'package:whats_app/Widgets/CallWidget.dart';
import 'package:whats_app/Widgets/ChatWidget.dart';

class CallsView extends StatefulWidget {
  const CallsView({Key key}) : super(key: key);

  @override
  _CallsViewState createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
  List<CallsModel> calls = [
  CallsModel(
    icall: true,
name: 'khalifa',
    time: '10اغسطس 1:08 م'

  ),
    CallsModel(
        icall: false,
        name: 'Bro',
        time: '12اغسطس 12:08 م'
    ),
    CallsModel(
        icall: true,
        name: 'E/Adbelwahab',
        time: '18اغسطس 8:30 م'
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {},
          child: Icon(Icons.add_call)

        ),

        body: ListView.builder(
            itemCount: calls.length,
            itemBuilder: (context, index) {
              return CallsWidget(
                callsModel:  calls[index],
              );
            }),


    );
  }
}
