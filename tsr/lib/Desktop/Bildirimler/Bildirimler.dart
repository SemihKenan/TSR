import 'package:flutter/material.dart';
import 'package:tsr/Desktop/Screens/HomePage.dart';

class Bildirimler extends StatefulWidget {
  const Bildirimler({super.key});

  @override
  State<Bildirimler> createState() => _BildirimlerState();
}

class _BildirimlerState extends State<Bildirimler> {
  @override
  bool? mesaj = true;
  bool? onizleme = true;
  bool? ifade = false;
  bool? sesler = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Bildirimler'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text('Mesajlar'),
            ),
            CheckboxListTile(
              //checkbox positioned at right
              value: mesaj,
              onChanged: (bool? value) {
                setState(() {
                  mesaj = value;
                });
              },
              title: const Text("Mesaj Bildirimleri"),
              subtitle: const Text('Yeni mesajlar için bildirimleri göster'),
            ),
            Divider(),
            CheckboxListTile(
              //checkbox positioned at right
              value: onizleme,
              onChanged: (bool? value) {
                setState(() {
                  onizleme = value;
                });
              },
              title: const Text("Önizlemeleri göster"),
            ),
            CheckboxListTile(
              //checkbox positioned at right
              value: ifade,
              onChanged: (bool? value) {
                setState(() {
                  ifade = value;
                });
              },
              title: const Text("İfade bildirimlerini göster"),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            CheckboxListTile(
              //checkbox positioned at right
              value: sesler,
              onChanged: (bool? value) {
                setState(() {
                  sesler = value;
                });
              },
              title: const Text("Sesler"),
              subtitle:
                  const Text('Gelen mesajlar sesli uyarılarla bildirilir'),
            ),
          ]),
    );
  }
}
