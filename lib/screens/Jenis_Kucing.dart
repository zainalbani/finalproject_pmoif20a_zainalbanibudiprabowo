import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:finalproject_pmoif20a_zainal/screens/Menu_Utama.dart';
import 'package:finalproject_pmoif20a_zainal/constant/Bantuan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JenisKucing extends StatefulWidget {
  const JenisKucing({Key? key}) : super(key: key);

  @override
  State<JenisKucing> createState() => _JenisKucingState();
}

class _JenisKucingState extends State<JenisKucing> {


  Future<void> loadData() async {
    // baseURL diambil dari constant
    // 'isi' merupakan nilai endpoint yang akan diambil datanya
    var dataURL = Uri.parse(baseURL + 'jenis');
    http.Response response = await http.get(dataURL);

    setState(() {
      List widgets = jsonDecode(response.body);
      print(widgets);
      // Ditambahkan nilai dari constant yang akan digunakan
      gjeniskucing = widgets[0]['jeniskucing'];
      gpenjelasan = widgets[0]['penjelasan'];
      gjeniskucing1 = widgets[1]['jeniskucing'];
      gpenjelasan1 = widgets[1]['penjelasan'];
      gjeniskucing2 = widgets[2]['jeniskucing'];
      gpenjelasan2 = widgets[2]['penjelasan'];
      gjeniskucing3 = widgets[3]['jeniskucing'];
      gpenjelasan3 = widgets[3]['penjelasan'];

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
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MenuUtama()));
          },
        ),
        title: Text("SmartCat"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.account_circle_sharp), onPressed: () {}),
          Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Hello, User"),
              ))
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _textField(),
                  customCard(
                    // xTitle: 'Kucing Anggora',
                    // xSubtitle:
                    //     'Bentuk Kepala Segitiga, Mata Seperti Almond, Tubuh Panjang dan Langsing, Hidung Mancung, Bulu Panjang',
                      xImage: 'assets/images/anggora.jpg',
                      xSubtitle: gpenjelasan,
                      xTitle: gjeniskucing,

                  ),
                  customCard(
                       xSubtitle: gpenjelasan1,
                       xTitle: gjeniskucing1,
                       xImage: 'assets/images/persia.jpg'),
                  customCard(
                      xSubtitle: gpenjelasan2,
                      xTitle: gjeniskucing2,
                      xImage: 'assets/images/bengal.png'),
                  customCard(
                      xSubtitle: gpenjelasan3,
                      xTitle: gjeniskucing3,
                      xImage: 'assets/images/siam.jpg'),

                ],
              ),
            ),
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

class customCard extends StatelessWidget {
  final String xTitle, xSubtitle, xImage;

  customCard({
    required this.xImage,
    required this.xTitle,
    required this.xSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // Listview Builder - Untuk melooping struktur data/widgetnya
          children: <Widget>[

            SizedBox(width: 500, height: 200, child: Image.asset(xImage)),
            ListTile(
                title: Text(
                xTitle,
                textAlign: TextAlign.center,
              ),
                subtitle: Text(
                xSubtitle,
                textAlign: TextAlign.center,
              ),
              ),
          ],
            ),
      ),
    );
                }
}