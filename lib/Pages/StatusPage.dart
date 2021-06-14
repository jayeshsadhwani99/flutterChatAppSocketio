import 'package:chatappsocketio/CustomUI/StatusPage/HeadOwnStatus.dart';
import 'package:chatappsocketio/CustomUI/StatusPage/OthersStatus.dart';
import 'package:flutter/material.dart';

class StautsPage extends StatefulWidget {
  StautsPage({Key? key}) : super(key: key);

  @override
  _StautsPageState createState() => _StautsPageState();
}

class _StautsPageState extends State<StautsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.blueGrey[900],
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.greenAccent[700],
            elevation: 5,
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadOwnStatus(),
            Container(
              height: 33,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 7,
                ),
                child: Text(
                  "Recent updates",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            OthersStatus(
              name: "Jayesh ",
              imageName: "assests/whatsapp_Back.png",
              time: "01:27",
            ),
            SizedBox(
              height: 10,
            ),
            label("Viewed Updates"),
            OthersStatus(
              name: "Jayesh ",
              imageName: "assests/whatsapp_Back.png",
              time: "01:27",
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String labelName) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 7,
        ),
        child: Text(
          labelName,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
