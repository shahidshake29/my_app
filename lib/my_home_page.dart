import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shahid/second_page.dart';
import 'package:shahid/utills/all_colors.dart';
import 'package:shahid/utills/all_strings.dart';
import 'package:slide_drawer/slide_drawer.dart';

String imgSrcAvatar =
    "https://cdn.pixabay.com/photo/2020/07/14/13/07/icon-5404125_1280.png";

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          // call toggle from SlideDrawer to alternate between open and close
          // when pressed menu button
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
        backgroundColor: AllColors.appBarClr,
        title: Text(AllStrings.shahid),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/imag4.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black12.withOpacity(0.5), BlendMode.dstATop)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: width * 0.25,
                        width: width * 0.25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                              imgSrcAvatar,
                            )),
                            borderRadius: BorderRadius.circular(180),
                            border: Border.all(width: 3, color: Colors.black)),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Text(
                                    AllStrings.following32k,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(AllStrings.following)
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "70k",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(AllStrings.Follower70k)
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Text(
                                    AllStrings.post60k,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(AllStrings.post)
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 25, right: 25),
                                    child: Text(AllStrings.message),
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: Colors.black,
                                  )),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 5,
                                        bottom: 5,
                                        left: 5,
                                        right: 5,
                                      ),
                                      child: Icon(
                                        Icons.chat_bubble_sharp,
                                        size: 15,
                                      )),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Text(AllStrings.goToNextPage)),
          ],
        ),
      ),
    );
  }
}
