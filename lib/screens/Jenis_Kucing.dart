import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:finalproject_pmoif20a_zainal/screens/kucing.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Menu_Utama.dart';
import 'kucing.dart';


class JenisKucing extends StatelessWidget {
  const JenisKucing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        children: [
          SizedBox(width: 20,),
          Row(
            children: [
              SizedBox(width: 120, height: 80,),
              Text("Jenis Kucing",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Itemlist(categoryKucing: listkucing,),
        ],
      )
    );
  }
}

class Itemlist extends StatelessWidget {
  final List<Kucing> categoryKucing;
  const Itemlist({Key? key, required this.categoryKucing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: categoryKucing.map((e) => Itemcard(kucing: e,)).toList(),
    );
  }
}

class Itemcard extends StatelessWidget {
  final Kucing kucing;
  const Itemcard({Key? key, required this.kucing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(kucing.image),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(kucing.nama),
              Text(kucing.category),
            ],
          ),
          const SizedBox(width: 12.0,),
        ],
      ),
    );
  }
}
