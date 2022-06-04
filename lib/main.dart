import 'package:flutter/material.dart';
import 'package:finalproject_pmoif20a_zainal/screens/login_view.dart';
import 'package:finalproject_pmoif20a_zainal/screens/register_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login",
    initialRoute: "/",
    routes: {
      "/" : (context) => LoginPage(),
      RegisterPage.routeName : (context) => RegisterPage(),
    },
  ));
}

