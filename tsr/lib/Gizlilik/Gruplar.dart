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
  bool? herkes_gruplar = false;
  bool? kisiler_gruplar = true;
  bool? secili_gruplar = false;
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
          CheckboxListTile(
            //checkbox positioned at right
            value: herkes_gruplar,
            onChanged: (bool? value) {
              setState(() {
                herkes_gruplar = value;
              });
            },
            title: const Text("Herkes"),
          ),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: kisiler_gruplar,
            onChanged: (bool? value) {
              setState(() {
                kisiler_gruplar = value;
              });
            },
            title: const Text("Kişiler"),
          ),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: secili_gruplar,
            onChanged: (bool? value) {
              setState(() {
                secili_gruplar = value;
              });
            },
            title: const Text("Seçili Olanlar"),
          ),
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text(
                'Sizi gruplara ekleyemeyen yöneticiler, size özel olarak davet gönderecektir.'),
          )
        ],
      ),
    );
  }
}
