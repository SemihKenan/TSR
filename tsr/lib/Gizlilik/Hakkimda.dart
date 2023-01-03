import 'package:flutter/material.dart';

import 'package:tsr/Gizlilik/Gizlilik.dart';

class hakkimda extends StatefulWidget {
  const hakkimda({super.key});

  @override
  State<hakkimda> createState() => _hakkimdaState();
}

class _hakkimdaState extends State<hakkimda> {
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
        title: const Text('Hakkımda'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text('Hakkımda Bilgimi Kimler Görebilir'),
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
          const ListTile(
            leading: Icon(Icons.check_box),
            title: Text('Hiç Kimse'),
          ),
        ],
      ),
    );
  }
}
