import 'package:flutter/material.dart';
import 'package:whats_app/Chats.dart';
void main(){
  runApp(WhatsApp());
}
class WhatsApp extends StatefulWidget {
  const WhatsApp({Key key}) : super(key: key);

  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('Whats App'),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              PopupMenuButton(itemBuilder: (context)
                {
                  return
                    [
                    PopupMenuItem(child: Text('New Group'),),
                      PopupMenuItem(child: Text('New broadcast'),),
                      PopupMenuItem(child: Text('Whatsapp web'),),
                      PopupMenuItem(child: Text('Settings'),),
                  ];


                }
                )


            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.camera),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Chats'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Status'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Calls'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ChatsView(),
              Text('Status'),
              Text('Calls'),
            ],
          ),
        ),
      ),
    );
  }
}

