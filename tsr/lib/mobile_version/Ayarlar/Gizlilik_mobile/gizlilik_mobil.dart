import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsr/mobile_version/Screens/homepage_mobile.dart';

import 'Gizlilik/Gruplar.dart';
import 'Gizlilik/Hakkimda.dart';
import 'Gizlilik/Profil_Fotografi.dart';
import 'Gizlilik/son_görülme.dart';
import '../../../Desktop/Screens/HomePage.dart';
import '../../../Widgets/Ayarlar.dart';

class gizlilikmobile extends StatefulWidget {
  const gizlilikmobile({super.key});

  @override
  State<gizlilikmobile> createState() => _gizlilikmobileState();
}

class _gizlilikmobileState extends State<gizlilikmobile> {
  @override
  bool? okundubilgisi = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const homepage_mobile(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Gizlilik'),
      ),
      body: ListView(children: [
        Card(
          child: InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const songorulme(),
                  ),
                );
              }),
              child: ayar(
                text: 'Songörülme ve Çevrimiçi Bilgisi',
                subtitle: 'Kişiler,Herkes',
              )),
        ),
        InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const profilfotografi(),
                ),
              );
            }),
            child: Card(
              child: ayar(
                text: 'Profil Fotoğrafi',
                subtitle: 'Kişiler',
              ),
            )),
        InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const hakkimda(),
                ),
              );
            }),
            child: Card(
              child: ayar(
                text: 'Hakkimda',
                subtitle: 'Herkes',
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const gruplar(),
                ),
              );
            }),
            child: Card(
              child: ayar(text: 'Gruplar', subtitle: 'Kişiler'),
            )),
        CheckboxListTile(
          value: okundubilgisi,
          onChanged: (bool? value) {
            setState(() {
              okundubilgisi = value;
            });
          },
          title: const Text("Okundu Bilgisi"),
        ),
        const Divider()
      ]),
    );
  }
}
