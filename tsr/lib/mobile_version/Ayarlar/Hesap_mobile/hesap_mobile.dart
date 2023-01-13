import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsr/Widgets/mobilhesap.dart';
import 'package:tsr/mobile_version/Ayarlar/hesap_pages/bilgi_talerp.dart';
import 'package:tsr/mobile_version/Ayarlar/hesap_pages/dogrulama.dart';
import 'package:tsr/mobile_version/Ayarlar/hesap_pages/guvenlik.dart';
import 'package:tsr/mobile_version/Ayarlar/hesap_pages/hesab%C4%B1m%C4%B1_sil.dart';
import 'package:tsr/mobile_version/Ayarlar/hesap_pages/numara_degistir.dart';
import 'package:tsr/mobile_version/Screens/homepage_mobile.dart';

class hesap_mobile extends StatefulWidget {
  const hesap_mobile({super.key});

  @override
  State<hesap_mobile> createState() => _hesap_mobileState();
}

class _hesap_mobileState extends State<hesap_mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text('Hesap'),
      ),
      body: ListView(
        children: [
          // Checkbox(value: value, onChanged: onChanged)
          InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const guvenlik(),
                  ),
                );
              }),
              child: hesap(
                  ikon: const Icon(Icons.shield),
                  yazimiz: 'Güvenlik Bildirimleri',
                  renk: Colors.black)),
          InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const dogrulama(),
                  ),
                );
              }),
              child: hesap(
                  ikon: const Icon(Icons.lock),
                  yazimiz: 'İki adımlı doğrulama',
                  renk: Colors.black)),
          InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const numaradegis(),
                  ),
                );
              }),
              child: hesap(
                  ikon: const Icon(Icons.phonelink_setup_sharp),
                  yazimiz: 'Numara Değiştir',
                  renk: Colors.black)),

          InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const bilgi_talep(),
                  ),
                );
              }),
              child: hesap(
                  ikon: const Icon(Icons.contact_page),
                  yazimiz: 'Hesap Bilgilerini Talep Et',
                  renk: Colors.black)),
          InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const hesap_sil(),
                  ),
                );
              }),
              child: hesap(
                  ikon: const Icon(Icons.delete),
                  yazimiz: 'Hesabmı Sil',
                  renk: Colors.red)),
        ],
      ),
    );
  }
}
