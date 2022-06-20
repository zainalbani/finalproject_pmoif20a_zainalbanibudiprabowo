import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Menu_Utama.dart';

class JenisKucing extends StatelessWidget {
  const JenisKucing({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => MenuUtama()
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
      body: SafeArea(
        child: Stack(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: const EdgeInsets.all(20.0),
                          child: Center(
                              child: Wrap(
                                  spacing: 30.0,
                                  runSpacing: 20.0,
                                  children: [
                                    SizedBox(
                                        width: 200.0,
                                        height: 250.0,
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 2.8,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          child: Center(
                                            child: Padding(padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Image.asset("assets/images/persia.jpg", width: 115, height: 115),
                                                  SizedBox(height: 1.0),
                                                  Text("Kucing Persia", style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 15.0
                                                  ),),
                                                  Text("Bulu tebal, mata bulat dan berwarna cerah, hidung pesek, telinga kecil, kepala berukuran besar, kaki pendek, ekor panjang, badan bulat.", style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 13.0
                                                  ),)
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                    )
                                  ]
                              )
                          )
                      ),
                      Padding(padding: const EdgeInsets.all(5.0),
                          child: Center(
                              child: Wrap(
                                  spacing: 30.0,
                                  runSpacing: 20.0,
                                  children: [
                                    SizedBox(
                                        width: 200.0,
                                        height: 250.0,
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 2.8,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          child: Center(
                                            child: Padding(padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Image.asset("assets/images/persia.jpg", width: 115, height: 115),
                                                  SizedBox(height: 1.0),
                                                  Text("Kucing Anggora", style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 15.0
                                                  ),),
                                                  Text("Bulu panjang, bentuk kepala segitiga, mata seperti almond, tubuh panjang dan langsing, hidung mancung.",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 13.0
                                                    ),),

                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                    )
                                  ]
                              )
                          )
                      ),

                    ],
                  )
              )
            ]
        ),

      ),
    );
  }
}
