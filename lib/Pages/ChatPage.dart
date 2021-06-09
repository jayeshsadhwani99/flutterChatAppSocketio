import 'package:chatappsocketio/CustomUI/CustomCard.dart';
import 'package:chatappsocketio/Model/ChatModel.dart';
import 'package:chatappsocketio/Screens/SelectContact.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Jayesh",
      isGroup: false,
      currentMessage: "Hello World",
      time: "4:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Paarth",
      isGroup: false,
      currentMessage: "Hi",
      time: "7:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Manoj",
      isGroup: false,
      currentMessage: "Hello",
      time: "13:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Kiran",
      isGroup: false,
      currentMessage: "Ok",
      time: "6:24",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Family",
      isGroup: true,
      currentMessage: "This is group",
      time: "16:58",
      icon: "groups.svg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (builder) => SelectContact()),
            );
          },
          child: Icon(Icons.chat),
        ),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) => CustomCard(
            chatModel: chats[index],
          ),
        ));
  }
}
