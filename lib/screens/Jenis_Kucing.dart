import 'package:finalproject_pmoif20a_zainal/screens/Menu_Utama.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


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
                  xTitle: 'Kucing Anggora', 
                  xSubtitle:  'Bentuk Kepala Segitiga, Mata Seperti Almond, Tubuh Panjang dan Langsing, Hidung Mancung, Bulu Panjang', 
                  xImage: 'assets/images/anggora.jpg'
                  ),
                  customCard(
                  xTitle: 'Kucing Persia', 
                  xSubtitle:  'Bulu Tebal, Mata Bulat dan berwarna cerah, Hidung pesek, Telinga kecil, Kepala berukuran besar, Kaki pendek, Ekor panjang dan berbulu tebal',
                  xImage: 'assets/images/persia.jpg'
                  ),
                  customCard(
                  xTitle: 'Kucing Bengal', 
                  xSubtitle:  'Bentuk kepala yang cukup besar dan panjang, Bagian leher yang cukup besar dan sedikit berotot, Ukuran hidung yang cukup besar dan lebar biasanya hidung berwarna merah dan terdapat garis hitam, Bentuk telinga yang runcing dan tegak ke atas, Mata lebar dan biasanya berwarna hijau, Warna bulu khas warna cokelat dan motif totol kehitaman ', 
                  xImage: 'assets/images/bengal.png'
                  ),
                  customCard(
                  xTitle: 'Kucing Siam', 
                  xSubtitle:  'Berwarna krem kehitaman pada bagian tubuh dengan telinga, wajah, ekor, dan kaki berwarna hitam. Tubuh berbentuk ramping, panjang, dan berotot. Tungkai dan ekor yang panjang dan langsing dengan warna kontras tinggi. Mata biru akibat genetika khas sehingga tidak ada kucing siam yang tidak bermata biru. Bulu pendek, mengkilap, licin, dan melekat rapat dengan tekstur yang sangat halus dan tipis sehingga tidak sering rontok. Telinga besar dan lebar pada bagian pangkal dengan ujung runcing berbentuk segitiga. ', 
                  xImage: 'assets/images/siam.jpg'
                  ),
                  customCard(
                  xTitle: 'Kucing Ragdoll', 
                  xSubtitle:  'Ukurannya besar, Kepala ragdoll berukuran medium, Hidung medium lebar pada bagian dasar dan berbentuk melingkar, Badan besar dan berat, Cakar besar bulat dan kokoh, Bulunya panjang tebal, mengkilap, menutupi seluruh badan dan tidak mudah kusut', 
                  xImage: 'assets/images/ragdoll.jpg'
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
    required this.xTitle,
    required this.xSubtitle,
    required this.xImage,
});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: 500,
              height: 200,
              child: Image.asset(xImage)
            ),
            ListTile(
              title: Text(xTitle,
              textAlign: TextAlign.center,
              ),
              subtitle: Text(xSubtitle,
              textAlign: TextAlign.center,
              ),
            ),
    ],
             ),
        ),
    );
  }
}