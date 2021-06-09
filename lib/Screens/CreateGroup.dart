import 'package:chatappsocketio/CustomUI/ButtonCard.dart';
import 'package:chatappsocketio/CustomUI/ContactCard.dart';
import 'package:chatappsocketio/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class CreateGroup extends StatefulWidget {
  CreateGroup({Key? key}) : super(key: key);

  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  List<ChatModel> contacts = [
    ChatModel(
      name: "Jayesh",
      status: "Full Stack Developer",
    ),
    ChatModel(
      name: "Kiran",
      status: "God bless",
    ),
    ChatModel(
      name: "Manoj",
      status: "Businessman",
    ),
    ChatModel(
      name: "Paarth",
      status: "Youtuber",
    ),
    ChatModel(
      name: "Avi",
      status: "Influencer",
    )
  ];

  List<ChatModel> groups = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Group",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Add Participants",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 26,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            if (contacts[index].select == false) {
              setState(() {
                contacts[index].select = true;
                groups.add(contacts[index]);
              });
            } else {
              setState(() {
                contacts[index].select = false;
                groups.remove(contacts[index]);
              });
            }
          },
          child: ContactCard(
            contact: contacts[index],
          ),
        ),
      ),
    );
  }
}
