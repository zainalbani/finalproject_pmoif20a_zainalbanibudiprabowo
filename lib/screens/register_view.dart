import 'package:finalproject_pmoif20a_zainal/screens/login_view.dart';
import 'package:flutter/material.dart';
import 'package:finalproject_pmoif20a_zainal/constants.dart';
import 'package:finalproject_pmoif20a_zainal/Api/Api.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController controllerusername = TextEditingController();
  TextEditingController controllerpassword = TextEditingController();
  TextEditingController controlleremail = TextEditingController();
  TextEditingController controllerrepassword = TextEditingController();

  _register($value) async {
    var data = {
      'username': controllerusername.text,
      'password': controllerpassword.text,
      'email': controlleremail.text,
    };
    if(controllerpassword.text != controllerrepassword.text){
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Repassword harus sama!!!")));
    }
    if ($value == 'users'){
    bool res = await CallApi().postData(data, 'users', context);
    if(res){
    Navigator.pop(context);}
    else{
      print("janggal");
    }}if ($value == 'admin'){
      bool res = await CallApi().postData(data, 'admin', context);
      if(res){
        Navigator.pop(context);}
      else {
        print("janggal");
      }}else{
    bool res = await CallApi().postData(data, 'dokter', context);
    if(res){
    Navigator.pop(context);}
    else{
    print("janggal");
    }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        title: Text("SmartCat",),
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
                  _iconRegister(),
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


  Widget _iconRegister() {
    return Image.asset(
      "assets/images/login.png",
      width: 200.0,
      height: 200.0,
    );
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
            hintText: "Username",
            hintStyle: TextStyle(color: Colors.blueAccent),
          ),
          style: TextStyle(color: Colors.black),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          controller: controlleremail,
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
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.blueAccent),
          ),
          style: TextStyle(color: Colors.black),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
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
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.blueAccent),
          ),
          style: TextStyle(color: Colors.black),
          obscureText: true,
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          controller: controllerrepassword,
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
            hintText: "Re-Password",
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
          onTap: (){
            _register("users");
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
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        InkWell(
          onTap: (){
            _register("admin");
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              'Register Admin',
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
        ),Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        InkWell(
          onTap: (){
            _register("dokter");
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              'Register Dokter',
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
        Text(
          'Sudah memiliki akun?',
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
                    builder: (context) => LoginPage()
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
      ],
    );
  }
}