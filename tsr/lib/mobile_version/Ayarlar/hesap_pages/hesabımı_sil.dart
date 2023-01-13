import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsr/Widgets/mobilhesap.dart';

import '../Hesap_mobile/hesap_mobile.dart';

class hesap_sil extends StatefulWidget {
  const hesap_sil({super.key});

  @override
  State<hesap_sil> createState() => _hesap_silState();
}

class _hesap_silState extends State<hesap_sil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const hesap_mobile(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Hesabımı Sil'),
      ),
      body: Column(
        children: [
          hesap(
              ikon: const Icon(
                Icons.warning,
                color: Colors.red,
              ),
              yazimiz: 'Hesabınızı Silerseniz',
              renk: Colors.red),
          const ListTile(
            title: Text(
              'Hesabınız WhatsApptan silinir',
            ),
          ),
          const ListTile(
            title: Text(
              'Mesaj geçmişiniz silinir',
            ),
          ),
          const ListTile(
            title: Text(
              'Tüm WhatsApp gruplarınızdan silinirsiniz',
            ),
          ),
          const ListTile(
            title: Text(
              'Google Drive yedeğiniz silinir',
            ),
          ),
          hesap(
              ikon: const Icon(Icons.phone),
              yazimiz:
                  'Bunun yerine telefon numaranızı değiştirmek ister misiniz?',
              renk: Colors.black),
          Container(
            width: 200,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.green),
            child: const Text('Numara Değiştir',
                style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
                'Hesabınızı silmek için ülke kodunuzu onaylayın ve telefon numaranızı girin'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 250.0, right: 250),
            child: TextField(
              decoration: InputDecoration(hintText: 'Ülke'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 250.0, right: 250),
            child: TextField(
              decoration: InputDecoration(hintText: 'Numara'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.red),
            child: const Text('Hesabımı sil',
                style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
