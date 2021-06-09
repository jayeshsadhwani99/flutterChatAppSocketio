import 'package:chatappsocketio/CustomUI/ButtonCard.dart';
import 'package:chatappsocketio/CustomUI/ContactCard.dart';
import 'package:chatappsocketio/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class SelectContact extends StatefulWidget {
  SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Contact",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "265",
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
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Invite a friend"),
                  value: "Invite a friend",
                ),
                PopupMenuItem(
                  child: Text("Contacts"),
                  value: "Contacts",
                ),
                PopupMenuItem(
                  child: Text("Refresh"),
                  value: "Refresh",
                ),
                PopupMenuItem(
                  child: Text("Help"),
                  value: "Help",
                ),
              ];
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return ButtonCard(
              icon: Icons.group,
              name: "New group",
            );
          } else if (index == 1) {
            return ButtonCard(
              icon: Icons.person_add,
              name: "New contact",
            );
          }
          return ContactCard(
            contact: contacts[index - 2],
          );
        },
      ),
    );
  }
}
