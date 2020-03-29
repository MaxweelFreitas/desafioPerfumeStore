import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Color configurations of defaults device bars
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          //statusBar
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          //navigationBar color
          systemNavigationBarColor: Color(0XFF59A05E), //bottom bar color
          systemNavigationBarIconBrightness: Brightness.light, //bottom bar icons
        )
    );
    //Orientations configs of app
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    //Hide the navigationBar
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}