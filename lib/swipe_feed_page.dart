import 'package:flutter/material.dart';

class SwipeFeedPage extends StatefulWidget {
  @override
  _SwipeFeedPageState createState() => _SwipeFeedPageState();
}

class _SwipeFeedPageState extends State<SwipeFeedPage> {
  bool showAlignmentCards = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.yellow,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.settings, color: Colors.blue)),
        title: Switch(
          onChanged: (bool value) => setState(() => showAlignmentCards = value),
          value: showAlignmentCards,
          activeColor: Colors.orange,
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.question_answer, color: Colors.blue)),
        ],
      ),
      backgroundColor: Colors.yellowAccent,
      body: Column(
        children: <Widget>[buttonsRow()],
      ),
    );
  }

  Widget buttonsRow() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            mini: true,
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: Icon(Icons.loop, color: Colors.black87),
          ),
          Padding(padding: EdgeInsets.only(right: 8.0)),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: Icon(Icons.close, color: Colors.white),
          ),
          Padding(padding: EdgeInsets.only(right: 8.0)),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: Icon(Icons.favorite, color: Colors.red),
          ),
          Padding(padding: EdgeInsets.only(right: 8.0)),
          FloatingActionButton(
            mini: true,
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: Icon(Icons.star, color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}
