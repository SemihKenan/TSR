import 'package:flutter/material.dart';
import 'package:tsr/Gizlilik/Gizlilik.dart';
import 'package:tsr/Screens/Sohbet.dart';
import 'package:tsr/Screens/Tema.dart';
import 'build_menu_item.dart';

class NavigationDrawer extends StatelessWidget {
  //const NavigationDrawer({super.key});
  final padding = const EdgeInsets.symmetric(horizontal: 20);
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: const Text('Gizlilik',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Hesap(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: const Text('Sohbetler',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const sohbet(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: const Text(
                    'Tema',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const tema(),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
