import 'package:flutter/material.dart';
import 'package:tsr/Gizlilik/Gizlilik.dart';
import 'package:tsr/Bildirimler/Bildirimler.dart';
import 'package:tsr/Tema/Tema.dart';
import 'build_menu_item.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  //const NavigationDrawer({super.key});
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  bool? acik;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(50, 75, 205, 1),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Hesap()));
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
                          builder: (context) => const Bildirimler()));
                },
                child: const Text('Bildirimler',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const tema()));
                },
                child: const Text('Tema',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
