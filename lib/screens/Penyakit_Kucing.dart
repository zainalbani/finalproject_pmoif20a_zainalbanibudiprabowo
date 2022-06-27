import 'package:finalproject_pmoif20a_zainal/screens/Penanganan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:finalproject_pmoif20a_zainal/screens/Menu_Utama.dart';

class PenyakitKucing extends StatelessWidget {
  const PenyakitKucing({Key? key}) : super(key: key);

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
              xTitle: "Infeksi Saluran Pernapasan Atas (ISPA)",
              xSubtitle: "Penyakit pada kucing yang satu ini juga sering dialami oleh manusia yaitu ISPA atau infeksi saluran pernapasan atas. Hal ini juga dapat mempengaruhi kucing lain di rumah, jadi kucing yang menderita ISPA harus diisolasi sementara demi kesehatannya sendiri dan orang lain. Infeksi pada telinga, hidung, tenggorokan, dan daerah sinus dianggap sebagai infeksi saluran pernapasan atas (ISPA) dan dapat ditularkan melalui bersin, batuk, atau menjilat. Gejalanya bisa meliputi Bersin, Penyumbatan, Batuk, Tersedak, Demam, Depresi dan Pernafasan mulut Terbuka",
            ),
            customCard(
              xTitle: "Diabetes",
              xSubtitle: "Diabetes hasil dari kurangnya insulin hormonal dan mempengaruhi kucing di seluruh dunia. Sama seperti kita manusia, diabetes kucing dapat diklasifikasikan menjadi dua jenis, Tipe I dan Tipe II. Tipe I menandakan kurangnya produksi insulin sedangkan Tipe II menunjukkan gangguan produksi insulin dan ketidakmampuan untuk membuat hormon. Penyakit ini dapat dikendalikan dan banyak kucing dapat hidup lama dan sehat di bawah kondisi diabetes, mirip dengan manusia. Gejalanya bisa meliputi Konsumsi air yang berlebihan, Dehidrasi, Peningkatan Buang Air Kecil, Infeksi saluran kemih, dan Perilaku Lesu ",
            ),
            customCard(
              xTitle: "Kanker",
              xSubtitle: "Meskipun lebih sering terjadi pada anjing, kanker juga masih sering muncul pada beberapa kucing. Meskipun lebih jarang, ketika itu terjadi, hasilnya jauh lebih parah daripada anjing yang menderita kanker. Mirip dengan manusia, kanker pada kucing kucing dapat terpusat pada satu area tubuh tertentu. Tumor dapat muncul dan menyebar ke seluruh tubuh dimana sel dapat tumbuh dengan cepat dan menyerang bagian tubuh kucing. Faktor keturunan dan lingkungan seringkali menjadi dua penyebab utama kanker pada kucing. Gejalanya bisa meliputi Benjolan, Pembengkakan, Bau mulut, Penurunan Berat badan, Kehilangan selera makan, Diare dan Muntah",
            ),
            customCard(
              xTitle: "Penyakit Ginjal Kronis",
              xSubtitle: "Chronic Kidney Disease (CKD) adalah salah satu penyakit pada kucing yang paling umum. Ini terutama sering terjadi pada kucing dewasa yang sudah tua tetapi juga memungkinkan terjadinya gagal ginjal pada anak kucing juga. Selain usia tua, gagal ginjal bisa disebabkan oleh kucing Anda yang memakan sesuatu yang beracun. Sangat penting untuk memastikan semua barang yang berpotensi beracun tidak berada dalam jangkauan kucing. Jika Anda melihat kucing kehilangan penglihatannya atau nafsu makannya berkurang dengan penurunan berat badan, mereka mungkin menderita penyakit ginjal kronis. Gejalanya bisa meliputi Bau Mulut, lidah coklat, Mantel bulu kering, Sembelit, Muntah atau diare, Sering buang air kecil, Rasa haus yang meningkat.",
            ),
            customCard(
              xTitle: "Rabies",
              xSubtitle: "Kita semua tahu bahwa rabies tidak hanya terjadi pada kucing, semua hewan dapat tertular rabies. Sebagai infeksi virus, ia memangsa otak dan sumsum tulang belakang ketika hewan peliharaan digigit oleh hewan yang terinfeksi. Gejala utamanya meliputi: gerakan otot yang tidak disengaja, mulut berbusa, dan agresivitas.",
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
                  builder: (context) => Penanganan()
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

