import 'package:flutter/material.dart';
import 'package:shahid/my_home_page.dart';
import 'package:slide_drawer/slide_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKye =GlobalKey <NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SlideDrawer(
        offsetFromRight: 220,
        backgroundGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors: [
            Color(0xFF522552),
            Color(0xFF1CB5E0),
          ],
        ),
        items: [
          MenuItem('My Photo',
              icon: Icons.accessibility_new,
              onTap: () {}),
          MenuItem('Home',
              icon: Icons.visibility,
              onTap: () {}),
          MenuItem('Second page',
              icon: Icons.ac_unit_sharp,
              onTap: () {}),
          MenuItem('Third page',
              icon: Icons.account_balance_wallet_sharp,
              onTap: () {}),
          MenuItem('Profile',
              icon: Icons.account_box_rounded,
              onTap: () {}),
          MenuItem('Setting',
              icon: Icons.adb,
              onTap: () {}),

        ],
        child: MyHomePage(),
      ),
    );
  }
}
