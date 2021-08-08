import 'package:flutter/material.dart';

class Feedpage extends StatefulWidget {
  Feedpage({Key? key}) : super(key: key);

  @override
  _FeedpageState createState() => _FeedpageState();
}

class _FeedpageState extends State<Feedpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feeds",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                // fontFamily: 'sans-serif-light',
                color: Colors.black)),
      ),
      drawer: Drawer(),
    );
  }
}
