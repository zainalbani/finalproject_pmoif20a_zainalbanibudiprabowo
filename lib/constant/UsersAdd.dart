import 'package:flutter/material.dart';
import '../../Api/Api.dart';
import '../../Constant/ConstantColor.dart';
import '../../Constant/Ukuran.dart';
class UsersAdd extends StatefulWidget {
  const UsersAdd({Key? key}) : super(key: key);
  @override
  State<UsersAdd> createState() => _UsersAddState();
}
class _UsersAddState extends State<UsersAdd> {
  TextEditingController controllerusername = TextEditingController();
  TextEditingController controllerpassword = TextEditingController();
  TextEditingController controlleremail = TextEditingController();
  TextEditingController controllerrepassword = TextEditingController();

  _simpan() async {
    var data = {
      'username': controllerusername.text,
      'password': controllerpassword.text,
      'email': controlleremail.text,
      'repassword': controllerrepassword.text,
    };
    bool res = await CallApi().postData(data, 'users', context);
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("DATABASE", style: TextStyle(fontSize: ukurnHurufJudul)),
            Text("Tambah Users",
                style: TextStyle(fontSize: ukurnHurufSubJudul)),
          ],
        ),
        ),
        body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child: ListView(
            children: [
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
        TextField(
        decoration: const InputDecoration(
        label: Text("User Name"), hintText: "User Name"),
    controller: controllerusername,
    ),
    TextField(
    decoration: const InputDecoration(
    label: Text("Password"), hintText: "Password"),
    controller: controllerpassword,
    ),
    TextField(
    decoration: const InputDecoration(
    label: Text("Email"), hintText: "Email"),
    controller: controlleremail,
    ),
    TextField(
    decoration: const InputDecoration(
    label: Text("repassword"), hintText: "repassword"),
    controller: controllerrepassword,
    ),
    Container(
    margin: const EdgeInsets.only(top: 20.0),
    width: double.infinity,
    height: 45,
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: warnaTombol,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        _simpan();
      },
      child: const Text(
        "Simpan",
        style: TextStyle(
          color: warnaTulisanTombol,
        ),
      ),
    ),
    ),
            ],
        ),
        )
            ],
        ),
        ),
    );
  }
}