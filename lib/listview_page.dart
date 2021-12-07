import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

List<String> stdName = [
  "Osman Goni",
  "Abbulla Islam",
  "Shahidur Rahaman",
  "Laila Khanam",
  "Mozahidur",
  "Rabia",
  "Mustahid",
  "Mustakin",
  "Azadur",
  "Sonia",
  "Azajeja"
];

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Femely  Mamber"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "My Famly",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: stdName.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        stdName[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepPurple,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
