import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Penanganan extends StatelessWidget {
  const Penanganan ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        title: Text("SmartCat"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.account_circle_sharp), onPressed: (){}),
          Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Hello, User"),
              )
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: ListView(
            children: <Widget> [
        Center(
        child: Column(
            children: <Widget>[
            _textField(),
        ],
      ),
    ),
    ],
    ),
    ),
    );
  }
}
Widget _textField(){
  return Column(
    children: <Widget>[
      Text('Penanganan Kucing',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22.0,
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 20.0))
    ],
  );
}
