import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shahid/utills/all_colors.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

String myimageSre =
    "https://image.shutterstock.com/image-photo/beautiful-blooming-pink-gerbera-daisy-260nw-1647166909.jpg";

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  tileMode: TileMode.repeated,
                  colors: [Colors.lightBlue, Colors.pink])),
        ),
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    height: 150, width: 150, child: Image.network(myimageSre)),
                Container(
                    height: 150, width: 150, child: Image.network(myimageSre)),
                Container(
                    height: 150, width: 150, child: Image.network(myimageSre)),
                Container(
                    height: 150, width: 150, child: Image.network(myimageSre)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
