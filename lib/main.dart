import 'package:date_sate_app/feed.dart';
import 'package:date_sate_app/feedfilter.dart';
import 'package:date_sate_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.autoScale(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          // background: Container(color: Color(0xFFF5F5F5))
        ),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.orange[400]),
        routes: {
          "/LoginPage": (context) => Login(),
          "/ProfilePage": (context) => ProfilePage(),
          "/feedPage": (context) => Feedpage(),
          "/Filter": (context) => Filter(),
        },
        home: Login(),
        // home: Filter(),
      ),
    );
  }
}
