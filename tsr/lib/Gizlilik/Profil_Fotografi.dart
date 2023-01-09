import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsr/Gizlilik/Gizlilik.dart';

class profilfotografi extends StatefulWidget {
  const profilfotografi({super.key});

  @override
  State<profilfotografi> createState() => _profilfotografiState();
}

class _profilfotografiState extends State<profilfotografi> {
  @override
  bool? herkes_profil = false;
  bool? kisiler_profil = true;
  bool? secili_profil = false;
  bool? hickimse_profil = false;
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
        title: const Text('Profil Fotoğrafi'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text('Profil Fotoğrafını Kimler Görebilir'),
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: herkes_profil,
            onChanged: (bool? value) {
              setState(() {
                herkes_profil = value;
              });
            },
            title: const Text("Herkes"),
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: kisiler_profil,
            onChanged: (bool? value) {
              setState(() {
                kisiler_profil = value;
              });
            },
            title: const Text("Kişiler"),
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: secili_profil,
            onChanged: (bool? value) {
              setState(() {
                secili_profil = value;
              });
            },
            title: const Text("Seçili Olanlar"),
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: hickimse_profil,
            onChanged: (bool? value) {
              setState(() {
                hickimse_profil = value;
              });
            },
            title: const Text("Hiçkimse"),
          ),
        ],
      ),
    );
  }
}
