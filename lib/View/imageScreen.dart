import 'dart:io';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  String path;
  ImageScreen({this.path});
  static String id = 'imageScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            child: Stack(children: [
          SizedBox(height: double.infinity,
              child: Image.file(File(path))),
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.west,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Icon(
                              Icons.text_fields_sharp,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Icon(
                              Icons.sentiment_satisfied_alt_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Icon(
                              Icons.crop_rotate_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4.0,8,8,8),
                              child: Container(

                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 159,left: 2,top: 10,bottom: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.photo_library_sharp,
                                        color: Colors.grey[500],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          'اضافه شرح...',
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:1,top: 8,bottom: 8,),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 23,
                                backgroundColor: Colors.teal,
                                child: Center(child: Icon(Icons.send,color: Colors.white,size: 25,)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ])));
  }
}
