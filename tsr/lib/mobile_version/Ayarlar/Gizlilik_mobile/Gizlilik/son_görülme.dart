import 'package:flutter/material.dart';
import 'package:tsr/Desktop/Gizlilik.dart';
import 'package:tsr/Desktop/Screens/HomePage.dart';
import 'package:tsr/mobile_version/Ayarlar/Gizlilik_mobile/gizlilik_mobil.dart';
import 'package:tsr/mobile_version/Ayarlar/Hesap_mobile/hesap_mobile.dart';

class songorulme extends StatefulWidget {
  const songorulme({super.key});

  @override
  State<songorulme> createState() => _songorulmeState();
}

class _songorulmeState extends State<songorulme> {
  @override
  bool? herkes_songorulme = false;
  bool? kisiler_songorulme = true;
  bool? secili_songorulme = false;
  bool? hickimse_songorulme = false;
  bool? herkes_cevrimici = true;
  bool? songorulme_cevrimici = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const gizlilikmobile(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Son Görülme'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text('Son Görülme Bilgimi Kimler Görebilir'),
          ),
          CheckboxListTile(
            value: herkes_songorulme,
            onChanged: (bool? value) {
              setState(() {
                herkes_songorulme = value;
              });
            },
            title: const Text("Herkes"),
          ),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            value: kisiler_songorulme,
            onChanged: (bool? value) {
              setState(() {
                kisiler_songorulme = value;
              });
            },
            title: const Text("Kişiler"),
          ),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            value: secili_songorulme,
            onChanged: (bool? value) {
              setState(() {
                secili_songorulme = value;
              });
            },
            title: const Text("Seçili Olanlar"),
          ),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            value: hickimse_songorulme,
            onChanged: (bool? value) {
              setState(() {
                hickimse_songorulme = value;
              });
            },
            title: const Text("Gizli"),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text('Çevrimiçi Olduğumu Kimler Görebilir'),
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: herkes_cevrimici,
            onChanged: (bool? value) {
              setState(() {
                herkes_cevrimici = value;
              });
            },
            title: const Text("Herkes"),
          ),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: songorulme_cevrimici,
            onChanged: (bool? value) {
              setState(() {
                songorulme_cevrimici = value;
              });
            },
            title: const Text("Songörülme ile aynı"),
          ),
        ],
      ),
    );
  }
}
