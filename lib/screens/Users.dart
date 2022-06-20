import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:need_resume/need_resume.dart';
import 'package:finalproject_pmoif20a_zainal/constant/Bantuan.dart';
import 'package:finalproject_pmoif20a_zainal/constant/Ukuran.dart';
import 'package:finalproject_pmoif20a_zainal/constant/UsersAdd.dart';
import 'package:finalproject_pmoif20a_zainal/constant/UsersEditDelete.dart';
class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);
  @override
  State<Users> createState() => _UsersState();
}
class _UsersState extends ResumableState<Users> {
  List widgets = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }
  void onReady() {
    // Implement your code inside here
  }
  @override
  void onResume() {
    // Implement your code inside here
    loadData();
  }
  @override
  void onPause() {
    // Implement your code inside here
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
    Text("Users", style: TextStyle(fontSize: ukurnHurufSubJudul)),
    ],
    ),
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: () {
    // goAnotherScreen();
    push(context, MaterialPageRoute(builder: (context) => UsersAdd()));
    },
    child: Icon(Icons.add),
    ),
    body:Container(
    color: Colors.white,
    padding: EdgeInsets.all(16.0),
    child: ListView.builder(
    itemCount: widgets.length,
    itemBuilder: (BuildContext context, int position) {
    return getRow(position);
    },
    ),
    ),
    );
  }
  Widget getRow(int i) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: GestureDetector(
        onTap: () {
          gid = widgets[i]["id"];
          gusername = widgets[i]["username"];
          gpassword = widgets[i]["password"];
          gemail = widgets[i]["email"];
          grepassword = widgets[i]["repassword"];

          push(context,
              MaterialPageRoute(builder: (context) => UsersEditDelete()));
        },
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${widgets[i]["username"]}",
                  style: TextStyle(fontSize: ukurnHurufIDIsiList)),
              Text("${widgets[i]["password"]}",
                  style: TextStyle(fontSize: ukurnHurufIDIsiList)),
              Text("${widgets[i]["email"]}",
                  style: TextStyle(fontSize: ukurnHurufIsiList)),
              Text("${widgets[i]["repassword"]}",
                  style: TextStyle(fontSize: ukurnHurufIsiList)),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> loadData() async {
    var dataURL = Uri.parse(baseURL + 'users');
    http.Response response = await http.get(dataURL);
    setState(() {
      widgets = jsonDecode(response.body);
    });
  }
}
