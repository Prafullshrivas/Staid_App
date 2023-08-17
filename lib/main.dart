import 'package:flutter/material.dart';
import 'package:staid/splashScreen.dart';

import 'navigationScreen/viewAll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),

      title: 'Splash Screen',

      home: splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}