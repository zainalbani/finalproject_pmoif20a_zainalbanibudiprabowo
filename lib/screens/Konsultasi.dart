import 'package:finalproject_pmoif20a_zainal/screens/DokterA.dart' as widgetDokterA;
import 'package:finalproject_pmoif20a_zainal/screens/DokterB.dart' as widgetDokterB;
import 'package:finalproject_pmoif20a_zainal/screens/DokterC.dart' as widgetDokterC;
import 'package:finalproject_pmoif20a_zainal/screens/DokterD.dart' as widgetDokterD;
import 'package:finalproject_pmoif20a_zainal/screens/DokterE.dart' as widgetDokterE;
import 'package:finalproject_pmoif20a_zainal/screens/DokterF.dart' as widgetDokterF;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Menu_Utama.dart';

class Konsultasi extends StatelessWidget {
  const Konsultasi ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const MenuUtama()
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
            children: <Widget>[
            _textField(),
            
            customCard(
              urlWidget: '/urlDokterA',
              xTitle: 'Dokter A',
              xSubtitle: 'Spesialis Penyakit Dalam Kucing', 
              xIcon: Icons.monetization_on,
              ),
              customCard(
              urlWidget: '/urlDokterB',
              xTitle: 'Dokter B',
              xSubtitle: 'Spesialis THT Kucing', 
              xIcon: Icons.monetization_on_rounded
              ),
              customCard(
              urlWidget: '/urlDokterC',
              xTitle: 'Dokter C',
              xSubtitle: 'Spesialis Kanker Kucing', 
              xIcon: Icons.monetization_on
              ),
              customCard(
              urlWidget: '/urlDokterD',
              xTitle: 'Dokter D',
              xSubtitle: 'Spesialis THT Kucing', 
              xIcon: Icons.monetization_on_rounded
              ),
              customCard(
              urlWidget: '/urlDokterE',
              xTitle: 'Dokter E',
              xSubtitle: 'Spesialis Pencernaan Kucing', 
              xIcon: Icons.monetization_on
              ),
              customCard(
              urlWidget: '/urlDokterF',
              xTitle: 'Dokter F',
              xSubtitle: 'Spesialis Penyakit Dalam Kucing', 
              xIcon: Icons.monetization_on_rounded
              ),
        ],
      ),
    ),
    ],
    ),
    ),
    ),
    routes: <String,WidgetBuilder>{
      '/urlDokterA' : (BuildContext context) => widgetDokterA.DokterA(),
      '/urlDokterB' : (BuildContext context) => widgetDokterB.DokterB(),
      '/urlDokterC' : (BuildContext context) => widgetDokterC.DokterC(),
      '/urlDokterD' : (BuildContext context) => widgetDokterD.DokterD(),
      '/urlDokterE' : (BuildContext context) => widgetDokterE.DokterE(),
      '/urlDokterF' : (BuildContext context) => widgetDokterF.DokterF(),
    },
    );
  }
}
Widget _textField(){
  return Column(
    children: <Widget>[
      Text('Konsultasi Dokter',
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

  final String xTitle, xSubtitle, urlWidget;
  final IconData xIcon;


  customCard({
    required this.xTitle,
    required this.xSubtitle,
    required this.xIcon,
    required this.urlWidget,
});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, urlWidget);
          },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          
            ListTile(
              tileColor: Colors.black,
              leading: Icon(Icons.person,
              color: Colors.white,
              size: 35,
              ),
              title: Text(xTitle,
              style: TextStyle(
                color: Colors.white,
              ),
              ),
              subtitle: 
              Text(xSubtitle,
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
              ),
              trailing: Icon(
                xIcon,
                color: Colors.green,
                size: 25.0,
              ),

              ),
              


    ],
             ),
        
        )
               ),
    );
  }
}