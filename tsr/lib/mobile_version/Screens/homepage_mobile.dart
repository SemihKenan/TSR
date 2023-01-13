import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsr/Desktop/Screens/body.dart';
import 'package:tsr/Widgets/Drawer.dart';
import 'package:tsr/Widgets/drawer_mobile.dart';
import 'package:tsr/mobile_version/Screens/mobile_body.dart';

class homepage_mobile extends StatefulWidget {
  const homepage_mobile({super.key});

  @override
  State<homepage_mobile> createState() => _homepage_mobileState();
}

class _homepage_mobileState extends State<homepage_mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp'),
        actions: [
          IconButton(onPressed: (() {}), icon: Icon(Icons.camera_alt)),
          IconButton(onPressed: (() {}), icon: Icon(Icons.search))
        ],
      ),
      body: mobile_body(),
      drawer: mobile_drawer(),
    );
  }
}
