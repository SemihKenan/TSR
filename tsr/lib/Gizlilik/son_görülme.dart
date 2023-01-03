import 'package:flutter/material.dart';
import 'package:tsr/Gizlilik/Gizlilik.dart';
import 'package:tsr/Screens/HomePage.dart';

class songorulme extends StatefulWidget {
  const songorulme({super.key});

  @override
  State<songorulme> createState() => _songorulmeState();
}

class _songorulmeState extends State<songorulme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Hesap(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Son Görülme'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text('Son Görülme Bilgimi Kimler Görebilir'),
          ),
          const ListTile(
            leading: Icon(Icons.check_box_rounded),
            title: Text('Herkes'),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.check_box_rounded),
            title: Text('Kişiler'),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.check_box_rounded),
            title: Text('Seçili Olanlar'),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.check_box_rounded),
            title: Text('Gizli'),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text('Çevrimiçi Olduğumu Kimler Görebilir'),
          ),
          const ListTile(
            leading: Icon(Icons.check_box_rounded),
            title: Text('Herkes'),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.check_box_rounded),
            title: Text('Son Görülme ile Aynı'),
          ),
        ],
      ),
    );
  }
}
