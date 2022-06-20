import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class JenisKucing extends StatelessWidget {
  const JenisKucing({Key? key}) : super(key: key);

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
            new GambarKucing(gambar: 'assets/images/anggora.jpg',judul: 'Kucing Anggora',),
            new GambarKucing(gambar: 'assets/images/persia.jpg',judul: 'Kucing Persia',)
          ],
        ),
      ),
    );
  }
}
Widget _textField() {
  return Column(
    children: <Widget>[
      Text(
        'Jenis Kucing',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22.0,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
    ],
  );
}
class GambarKucing extends StatelessWidget {

GambarKucing({required this.gambar, required this.judul});

final String gambar;
final String judul;
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: EdgeInsets.all(15.0),
        child: new Center(
            child: new Row(
              children: <Widget>[
                new Image.asset(gambar,
                width: 175.0,
                ),
                new Container(
                  child: new Center(
                    child: new Column(
                  children: <Widget>[
                    new Text(judul),
                    new Text("Kucing kucing")
                  ],
                    )

                  )
                )
              ],
            )
        )
    );
  }
}
