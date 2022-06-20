import 'package:finalproject_pmoif20a_zainal/screens/Diskusi.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Penyakit_Kucing.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Jenis_Kucing.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Penanganan.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Konsultasi.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuUtama extends StatefulWidget {
  const MenuUtama({Key? key}) : super(key: key);

  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        title: Text('SmartCat'),
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
        padding: EdgeInsets.all(40.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _textField(),
                  _buildButton(context),
                ],
              ),
            )
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
        'MENU UTAMA',
        style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 70.0),
      ),
    ],
  );
}

Widget _buildButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 20.0),
      ),
      InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => JenisKucing()
              ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'JENIS KUCING',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => PenyakitKucing()
              ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'PENYAKIT KUCING',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => Penanganan()
              ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'PENANGANAN KUCING',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => Diskusi()
              ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'FORUM DISKUSI',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => Konsultasi()
              ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'KONSULTASI DOKTER',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => Users()
              ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Edit Users',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    ],
  );
}

