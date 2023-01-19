import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsr/Widgets/aktif_durum.dart';

class status extends StatefulWidget {
  const status({super.key});

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/photo2.png'),
              ),
              title: Text('Durumum'),
              subtitle: Text('Güncelleme Yok'),
            ),
          ),
          const Divider(),
          Card(
            child: aktifdurum(
                profilresmi: const AssetImage('images/photo1.jpg'),
                isim: 'Mike'),
          ),
          Card(
            child: aktifdurum(
                profilresmi: const AssetImage('images/photo4.jpg'),
                isim: 'Jake'),
          ),
          Card(
            child: aktifdurum(
                profilresmi: const AssetImage('images/photo3.png'),
                isim: 'Kevin'),
          ),
        ],
      ),
    );
  }
}
