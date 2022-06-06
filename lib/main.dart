import 'package:finalproject_pmoif20a_zainal/splashscreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartCat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,canvasColor: Colors.transparent,
      ),
      home: splashscreen(),
    );
  }
}
