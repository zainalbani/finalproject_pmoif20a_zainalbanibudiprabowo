import 'package:finalproject_pmoif20a_zainal/screens/admin/diskusi_admin.dart';
import 'package:finalproject_pmoif20a_zainal/screens/admin/Penyakit_admin.dart';
import 'package:finalproject_pmoif20a_zainal/screens/admin/Jeniskucing_admin.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Penanganan.dart';
import 'package:finalproject_pmoif20a_zainal/screens/admin/konsultasi_dok_admin.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Users.dart';
import 'package:finalproject_pmoif20a_zainal/screens/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuAdmin extends StatefulWidget {
  const MenuAdmin({Key? key}) : super(key: key);

  @override
  State<MenuAdmin> createState() => _MenuAdminState();
}

class _MenuAdminState extends State<MenuAdmin> {
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
                child: Text("Hello, Admin"),
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
        'MENU ADMIN',
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
                  builder: (context) => JenisKucingAdmin()
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
                  builder: (context) => PenyakitAdmin()
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
                  builder: (context) => DiskusiAdmin()
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
                  builder: (context) => Konsultasidok()
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
            'EDIT USERS',
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
