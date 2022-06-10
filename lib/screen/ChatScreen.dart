// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable, file_names

import 'package:basicss/models/messeage_model.dart';
import 'package:basicss/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({required this.user});

  // const ChatScreen({Key? key, this.user}) : super(key: key);
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ///functionnn
  buildmessage(Message message, bool isme) {
    return Container(
      margin: isme
          ? EdgeInsets.only(top: 10, bottom: 8, left: 80)
          : EdgeInsets.only(top: 10, bottom: 8, right: 80),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.time,
            style: TextStyle(
                fontSize: 13,
                color: Colors.black54,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            message.text,
            style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: isme ? Colors.red[100] : Colors.lime[50],
          borderRadius: isme
              ? BorderRadius.only(
                  topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))
              : BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
    );
  }

//functionnn
  sendmesseage() {
    return Container(
      color: Colors.white,
      height: 70,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.image),
            color: Colors.red[100],
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(hintText: "Send a messeage..."),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
            color: Colors.red[100],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.user.name,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 15),
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    final bool isme =
                        messages[index].sender.id == currentUser.id;

                    return buildmessage(messages[index], isme);
                  }),
            ),
          ),
          sendmesseage(),
        ],
      ),
    );
  }
}
