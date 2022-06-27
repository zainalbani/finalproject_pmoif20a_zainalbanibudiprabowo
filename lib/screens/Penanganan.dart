import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Menu_Utama.dart';

class Penanganan extends StatelessWidget {
  const Penanganan ({Key? key}) : super(key: key);


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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _textField(),
            customCard(
              xTitle: "Penanganan Infeksi Saluran Pernapasan Atas (ISPA)",
              xSubtitle: "Pengobatan yang dilakukan umumnya bersifat symptomatically (berdasaran gejala yang muncul). Jika terdapat kontak mata, biasanya diberikan obat mata topikal berupa tetes ataupun salep. Pada kasus infeksi saluran pernapasan yang penyebab utamanya adalah bakteri, maka akan diberikan antibiotik yang spesifik. Jika terjadi penyumbatan pada saluran nafas maka terapi menggunakan nebulizer sangat dibutuhkan. kita bisa melakukan perawatan dengan rutin membersihkan area mata, hidung dan mulut. Pemberian makanan lunak yang mudah dicerna serta aroma yang kuat akan merangsang nafsu makan kucing kita. Pemberian vitamin nafsu makan juga terkadang sangat dibutuhkan. Jika kondisi kucing kita sudah lemah dan penyakitnya bertambah parah maka sebaiknya kucing dirawat inap agar mendapat treatment intensif berupa pemberian cairan infus dan treatment lain yang dibutuhkan. Hindari pemberian obat flu manusia kepada kucing terutama obat yang mengandung paracetamol/acetaminophen. Hal tersebut dapat membahayakan kucing kita",
            ),
            customCard(
              xTitle: "Penanganan Diabetes",
              xSubtitle: "1. Setiap kucing penderita diabetes bersifat unik dan terapi yang digunakan berbeda-beda. 2. Beberapa kucing penderita diabetes yang terlanjur parah saat pertama kali didiagnosis membutuhkan perawatan intensif di rumah sakit selama beberapa hari untuk mengatur kadar gula darahnya. 3. Bagi kebanyakan kucing penderita diabetes, suntikan insulin diperlukan untuk pengaturan glukosa darah yang memadai. 4. Lakukan tes glukosa ",
            ),
            customCard(
              xTitle: "Penanganan Kanker",
              xSubtitle: "Pilihan pengobatan bervariasi dan bergantung pada jenis dan stadium kanker. Perawatan umum termasuk pembedahan, kemoterapi, radiasi dan imunoterapi atau kombinasi terapi. Keberhasilan pengobatan tergantung pada bentuk dan luasnya kanker serta agresivitas terapi. Tentu saja, deteksi dini adalah yang terbaik. Beberapa pemilik kucing memilih untuk tidak menjalani pengobatan kanker, dalam hal ini perawatan paliatif, termasuk pereda nyeri, harus dipertimbangkan. Terlepas dari bagaimana Anda melanjutkan setelah diagnosis kanker pada hewan peliharaan Anda, sangat penting untuk mempertimbangkan kualitas hidupnya saat membuat keputusan di masa depan. Beberapa kanker dapat disembuhkan, dan hampir semua pasien dapat menerima setidaknya beberapa manfaat dari pengobatan. Harap diperhatikan bahwa jika kanker yang diderita kucing Anda tidak dapat disembuhkan, masih banyak hal yang dapat Anda lakukan untuk membuat hewan peliharaan Anda merasa lebih baik. Jangan ragu untuk berbicara dengan dokter hewan tentang pilihan Anda. Dan ingat nutrisi yang baik dan perawatan penuh kasih dapat sangat meningkatkan kualitas hidup kucing Anda.",
            ),
            customCard(
              xTitle: "Penanganan Penyakit Ginjal Kronis",
              xSubtitle: "Penyakit ginjal seperti gagal ginjal kronis adalah kondisi yang tampaknya tidak dapat disembuhkan, terutama yang dialami kucing yang lebih tua. Dokter hewan mungkin akan merekomendasikan terapi cairan, modifikasi makanan, obat tekanan darah, dialisis, atau transplantasi. Maka dari itu, penting untuk memastikan kucing melakukan pemeriksaan rutin di dokter hewan. Tindakan ini bisa menjadi langkah awal untuk mengetahui penyakit lebih awal agar bisa segera ditangani. ",
            ),
            customCard(
              xTitle: "Rabies",
              xSubtitle: "Untuk mencegah rabies pada kucing peliharaan, kamu perlu memberikannya vaksin rabies. Pemberian vaksin rabies secara berkala pada kucing dapat menghindari potensi tinggi untuk terjangkit rabies",
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
