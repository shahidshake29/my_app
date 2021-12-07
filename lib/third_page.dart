import 'package:flutter/material.dart';

double conHeight = 50;
double conWidth = 50;

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

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
        title: Text("Third Page"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
