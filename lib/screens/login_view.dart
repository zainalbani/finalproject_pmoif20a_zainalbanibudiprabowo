
import 'package:finalproject_pmoif20a_zainal/constant/Bantuan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:finalproject_pmoif20a_zainal/constants.dart';
import 'package:finalproject_pmoif20a_zainal/screens/register_view.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Menu_Utama.dart';


class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var controllerusername = TextEditingController();
  var controllerpassword = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        title: Text("SmartCat"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
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
  Future <void> login() async{
    if(controllerpassword.text.isNotEmpty && controllerusername.text.isNotEmpty) {
     http.Response response =
     await http.post(Uri.parse(baseURL),
         body:
         ({'username':controllerusername.text,
           'password':controllerpassword.text
         }));
     print(response.statusCode);
     print(response.body);
     if(response.statusCode==200){
       Navigator.push(context,
           MaterialPageRoute(
           builder: (context) => MenuUtama()
           ));
     } else{
       ScaffoldMessenger.of(context)
           .showSnackBar(SnackBar(content: Text("Invalid")));
     }
    } else{
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Isian tidak boleh kosong")));
    }
    _setHeaders() => {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };  }


  Widget _iconLogin() {
    return Image.asset(
      "assets/images/login.png",
      width: 200.0,
      height: 200.0,
    ); //images
  }

  Widget _textField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          controller: controllerusername,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),

            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black26,
                width: 3.0,
              ),
            ),
            icon: Icon(Icons.account_circle_outlined),
            hintText: "Username",
            hintStyle: TextStyle(
                color: Colors.blueAccent),
          ),
          style: TextStyle(color: Colors.black),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 6.0),
        ),
        TextFormField(
          controller: controllerpassword,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black26,
                width: 3.0,
              ),
            ),
            icon: Icon(Icons.help_outline),
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.blueAccent),
          ),
          style: TextStyle(color: Colors.black),
          obscureText: true,
          autofocus: false,
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
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => MenuUtama()
                ));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              'Login',
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
          onTap: () {
            login();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              'Login Dokter',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0
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
        Text(
          'Belum memiliki akun?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => RegisterPage()
                ));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              'Register',
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
}
