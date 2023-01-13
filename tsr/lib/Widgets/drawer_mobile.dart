import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsr/mobile_version/Ayarlar/Gizlilik_mobile/gizlilik_mobil.dart';
import 'package:tsr/mobile_version/Ayarlar/Hesap_mobile/hesap_mobile.dart';
import 'package:tsr/mobile_version/Ayarlar/Sohbet_mobile/sohbet_mobile.dart';

class mobile_drawer extends StatefulWidget {
  const mobile_drawer({super.key});

  @override
  State<mobile_drawer> createState() => _mobile_drawerState();
}

class _mobile_drawerState extends State<mobile_drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.lime,
        child: ListView(children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 30.0),
            child: Text(
              'Ayarlar',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const hesap_mobile()));
                },
                child: const Text('Hesap',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const gizlilikmobile()));
                },
                child: const Text('Gizlilik',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const sohbet_mobile()));
                },
                child: const Text('Sohbetler',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
