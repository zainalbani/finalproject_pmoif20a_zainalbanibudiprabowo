import 'package:finalproject_pmoif20a_zainal/screens/admin/konsultasi_dok_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class dokterC extends StatelessWidget {
  const dokterC ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const Konsultasidok()
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
                child: Text("Hello, Admin"),
              )
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Dokter B',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 130,
            width: 400,
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              style: TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'Ketikan Sesuatu....',
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )
              ),
            ),
          ),
          buildDiskusi(),

        ],
      ),
    );
  }
}
Widget buildDiskusi(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.black
        ),
        child: const Text("Kirim", style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
        onPressed: () {
        },
      )
    ],
  );
}
