import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsr/Gizlilik/Gizlilik.dart';

class gruplar extends StatefulWidget {
  const gruplar({super.key});

  @override
  State<gruplar> createState() => _gruplarState();
}

class _gruplarState extends State<gruplar> {
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
        title: const Text('Gruplar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text('Beni Gruplara Kimler Ekleyebilir'),
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
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
                'Sizi gruplara ekleyemeyen yöneticiler, size özel olarak davet gönderecektir.'),
          )
        ],
      ),
    );
  }
}
