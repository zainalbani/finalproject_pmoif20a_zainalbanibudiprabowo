import 'dart:async';
import 'package:flutter/material.dart';
import 'package:finalproject_pmoif20a_zainal/screens/login_view.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState(){
    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()),
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyanAccent,
      //image
      child: Image.asset("assets/images/kucing1.png"),
    );
  }
}
