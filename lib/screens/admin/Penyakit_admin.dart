import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:finalproject_pmoif20a_zainal/constant/Bantuan.dart';
import 'package:finalproject_pmoif20a_zainal/screens/admin/Penanganan_admin.dart';
import 'package:finalproject_pmoif20a_zainal/constant/PenyakitEditDelete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:finalproject_pmoif20a_zainal/screens/admin/menu_admin.dart';

class PenyakitAdmin extends StatefulWidget {
  const PenyakitAdmin({Key? key}) : super(key: key);

  @override
  State<PenyakitAdmin> createState() => _PenyakitAdminState();
}

class _PenyakitAdminState extends State<PenyakitAdmin> {

  Future<void> loadData() async {
    // baseURL diambil dari constant
    // 'isi' merupakan nilai endpoint yang akan diambil datanya
    var dataURL = Uri.parse(baseURL + 'penyakit');
    http.Response response = await http.get(dataURL);

    setState(() {
      List widgets = jsonDecode(response.body);
      print(widgets);
      // Ditambahkan nilai dari constant yang akan digunakan
      gnamapenyakit = widgets[0]['namapenyakit'];
      gpenjelasan = widgets[0]['penjelasan'];
      gnamapenyakit1 = widgets[1]['namapenyakit'];
      gpenjelasan1 = widgets[1]['penjelasan'];
      gnamapenyakit2 = widgets[2]['namapenyakit'];
      gpenjelasan2 = widgets[2]['penjelasan'];
      gnamapenyakit3 = widgets[3]['namapenyakit'];
      gpenjelasan3 = widgets[3]['penjelasan'];
      gnamapenyakit4 = widgets[4]['namapenyakit'];
      gpenjelasan4= widgets[4]['penjelasan'];
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
                    builder: (context) => const MenuAdmin()
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
                    xTitle: gnamapenyakit,
                    xSubtitle: gpenjelasan,
                  ),
                  customCard(
                    xTitle: gnamapenyakit1,
                    xSubtitle: gpenjelasan1,
                  ),
                  customCard(
                    xTitle: gnamapenyakit2,
                    xSubtitle: gpenjelasan2,
                  ),
                  customCard(
                    xTitle: gnamapenyakit3,
                    xSubtitle: gpenjelasan3,
                  ),
                  customCard(
                    xTitle: gnamapenyakit4,
                    xSubtitle: gpenjelasan4,
                  ),
                  _buildButton(context),
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
      Text('Penyakit Kucing',
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
              subtitle:
              Text(xSubtitle,
                textAlign: TextAlign.justify,
              ),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PenyakitEditDelete()));
                },
              ),

            ),
          ],
        ),
      ),
    );
  }
}
Widget _buildButton (BuildContext context){
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 20.0),
      ),
      InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => PenangananAdmin()
              ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'PENANGANAN',
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


