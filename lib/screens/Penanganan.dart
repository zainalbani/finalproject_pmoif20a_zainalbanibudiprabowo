import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:finalproject_pmoif20a_zainal/constant/Bantuan.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Penyakit_Kucing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class Penanganan extends StatefulWidget {
  const Penanganan({Key? key}) : super(key: key);

  @override
  State<Penanganan> createState() => _PenangananState();
}

class _PenangananState extends State<Penanganan> {

  Future<void> loadData() async {
    // baseURL diambil dari constant
    // 'isi' merupakan nilai endpoint yang akan diambil datanya
    var dataURL = Uri.parse(baseURL + 'penanganan');
    http.Response response = await http.get(dataURL);

    setState(() {
      List widgets = jsonDecode(response.body);
      print(widgets);
      // Ditambahkan nilai dari constant yang akan digunakan
      gpenanganan = widgets[0]['penanganan'];
      gpenjelasan = widgets[0]['penjelasan'];
      gpenanganan1 = widgets[1]['penanganan'];
      gpenjelasan1 = widgets[1]['penjelasan'];
      gpenanganan2 = widgets[2]['penanganan'];
      gpenjelasan2 = widgets[2]['penjelasan'];
      gpenanganan3 = widgets[3]['penanganan'];
      gpenjelasan3 = widgets[3]['penjelasan'];
      gpenanganan4 = widgets[4]['penanganan'];
      gpenjelasan4 = widgets[4]['penjelasan'];
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const PenyakitKucing()
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _textField(),
                  customCard(
                    xTitle: gpenanganan,
                    xSubtitle: gpenjelasan,
                  ),
                  customCard(
                    xTitle: gpenanganan1,
                    xSubtitle: gpenjelasan1,
                  ),
                  customCard(
                    xTitle: gpenanganan2,
                    xSubtitle: gpenjelasan2,
                  ),
                  customCard(
                    xTitle: gpenanganan3,
                    xSubtitle: gpenjelasan3,
                  ),
                  customCard(
                    xTitle: gpenanganan4,
                    xSubtitle: gpenjelasan4,
                  ),
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
class customCard extends StatelessWidget {

  final String xTitle, xSubtitle;



  customCard({
    required this.xTitle,
    required this.xSubtitle,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(

              leading: Icon(Icons.health_and_safety),
              title: Text(xTitle),
              subtitle: Text(xSubtitle,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

