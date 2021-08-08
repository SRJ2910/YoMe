import 'dart:math';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'imgage.dart';

class Feedpage extends StatefulWidget {
  @override
  _FeedpageState createState() => _FeedpageState();
}

class _FeedpageState extends State<Feedpage> {
  List<int> data = [];
  int _focusedIndex = -1;

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 5; i++) {
      data.add(Random().nextInt(2) + 1);
    }
  }

  void _onItemFocus(int index) {
    print(index);
    setState(() {
      _focusedIndex = index;
    });
  }

  Widget _buildItemDetail() {
    if (_focusedIndex < 0)
      return Container(
        height: 50,
        child: Text("SWIPE-->"),
      );

    if (data.length > _focusedIndex)
      return Container(
        height: 50,
        child: Text(
          "<--SWIPE-->",
        ),
      );

    return Container(
      height: 250,
      // child: Text("No Data"),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    if (index == data.length)
      return Center(
        child: CircularProgressIndicator(),
      );

    //horizontal
    return Center(
      child: Container(
        width: 390,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                  // height: 600,
                  // width: 350,
                  color: Colors.blue,
                  child: Image.network(
                    img(index),
                    fit: BoxFit.fitHeight,
                  )),
            )
          ],
        ),
      ),
    );
  }

  ///Override default dynamicItemSize calculation
  double customEquation(double distance) {
    // return 1-min(distance.abs()/500, 0.2);
    return 1 - (distance / 1000);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Feeds",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  // fontFamily: 'sans-serif-light',
                  color: Colors.black)),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 300,
                child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.orange[400],
                    ),
                    child: Container(
                      height: 2.0,
                      width: 2.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0x33A6A6A6)),
                          color: const Color(0xff7c94b6),
                          // borderRadius: BorderRadius.circular(12),
                          // border: Border.all(color: const Color(0xFF28324E)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmFp5SDGvQdK3UOl9fzYQhThPOycSgjJA2dw&usqp=CAU"),
                          )),
                    )),
              ),
              ListTile(
                leading: Builder(builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.person_outlined),
                    onPressed: () {},
                  );
                }),
                title: const Text(
                  "Profile",
                  textScaleFactor: 1.5,
                ),
                subtitle: Text("Profile detail"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Builder(builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.filter_alt),
                    onPressed: () {},
                  );
                }),
                title: const Text(
                  "Filter",
                  textScaleFactor: 1.5,
                ),
                subtitle: Text("Filter your feed"),
                onTap: () {
                  Navigator.pushNamed(context, '/Filter');
                },
              ),
              Divider(),
              ListTile(
                title: const Text(
                    "Version : 1.0.1\nContact : surajverma2910@gmail.com"),
                onTap: () {},
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 10),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ScrollSnapList(
                  onItemFocus: _onItemFocus,
                  itemSize: 390,
                  itemBuilder: _buildListItem,
                  itemCount: data.length,
                  dynamicItemSize: true,
                  // dynamicSizeEquation: customEquation, //optional
                ),
              ),
              _buildItemDetail(),
            ],
          ),
        ),
      ),
    );
  }
}
