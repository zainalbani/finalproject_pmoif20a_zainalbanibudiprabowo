import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Menu_Utama.dart';

class Diskusi extends StatelessWidget {
  const Diskusi ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const MenuUtama()
                ));
          },
        ),
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
      Text('Forum Diskusi',
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
