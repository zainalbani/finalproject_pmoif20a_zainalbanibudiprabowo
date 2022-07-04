import 'package:flutter/material.dart';
import 'package:finalproject_pmoif20a_zainal/Api/Api.dart';
import 'package:finalproject_pmoif20a_zainal/constant/Bantuan.dart';
import 'package:finalproject_pmoif20a_zainal/constant/Constantcolor.dart';
import 'package:finalproject_pmoif20a_zainal/constant/Ukuran.dart';
class PenyakitEditDelete extends StatefulWidget {
  const PenyakitEditDelete({Key? key}) : super(key: key);
  @override
  State<PenyakitEditDelete> createState() => _PenyakitEditDeleteState();
}
class _PenyakitEditDeleteState extends State<PenyakitEditDelete> {
  TextEditingController controllerid = TextEditingController();
  TextEditingController controllernamapenyakit = TextEditingController();
  TextEditingController controllerpenjelasan = TextEditingController();
  @override
  void initState() {
    super.initState();
    setState(() {
      controllerid.text = gid;
      controllernamapenyakit.text = gusername;
      controllerpenjelasan.text = gpassword;

    });
  }
  _edit() {
    var data = {
      'namapenyakit': controllernamapenyakit.text,
      'penjelasan': controllerpenjelasan.text,

    };
    var res = CallApi().putData(data, 'penyakit/'+controllerid.text, context);
    Navigator.pop(context);
  }
  _hapus() async {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text("Hapus Data"),
            content: Text("Apakah anda yakin?"),
            actions: [
              TextButton(
                  onPressed: () async {
                    var data = {
                      'penyakit': 'hapus',
                      'idUsers': controllernamapenyakit.text,
                    };
                    var res = CallApi().delData(data, 'penyakit/'+controllerid.text, context);
                    // var res = await CallApi().delData(data, 'Users/3', context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const Text('Ya')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const Text('Tidak'))
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("SmartCat", style: TextStyle(fontSize: ukurnHurufJudul)),
            Text("Ubah Penyakit",
                style: TextStyle(fontSize: ukurnHurufSubJudul)),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                        label: Text("Id"), hintText: "Id"),
                    controller: controllerid,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        label: Text("Nama Penyakit"), hintText: "Nama Penyakit"),
                    controller: controllernamapenyakit,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        label: Text("Penjelasan"), hintText: "Penjelasan"),
                    controller: controllerpenjelasan,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    width: (double.infinity) / 2,
                    height: 45,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: warnaTombol,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        _edit();
                      },
                      child: const Text(
                        "Simpan",
                        style: TextStyle(
                          color: warnaTulisanTombol,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4.0),
                    width: (double.infinity) / 2,
                    height: 45,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: warnaTombol,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        _hapus();
                      },
                      child: const Text(
                        "Hapus",
                        style: TextStyle(
                          color: warnaTulisanTombol,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}