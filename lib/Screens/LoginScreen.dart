import 'package:chatappsocketio/CustomUI/ButtonCard.dart';
import 'package:chatappsocketio/Model/ChatModel.dart';
import 'package:chatappsocketio/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ChatModel? sourceChat;

  List<ChatModel> chatModels = [
    ChatModel(
      name: "Jayesh",
      isGroup: false,
      currentMessage: "Hello World",
      time: "4:00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "Paarth",
      isGroup: false,
      currentMessage: "Hi",
      time: "7:00",
      icon: "person.svg",
      id: 2,
    ),
    ChatModel(
      name: "Manoj",
      isGroup: false,
      currentMessage: "Hello",
      time: "13:00",
      icon: "person.svg",
      id: 3,
    ),
    ChatModel(
      name: "Kiran",
      isGroup: false,
      currentMessage: "Ok",
      time: "6:24",
      icon: "person.svg",
      id: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatModels.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            sourceChat = chatModels.removeAt(index);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (builder) => Homescreen(
                  chatModels: chatModels,
                  sourceChat: sourceChat,
                ),
              ),
            );
          },
          child: ButtonCard(
            name: chatModels[index].name,
            icon: Icons.person,
          ),
        ),
      ),
    );
  }
}
