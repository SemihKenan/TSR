import 'package:flutter/material.dart';
import 'package:tsr/mobile_version/Screens/Status.dart';
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TSR'),
          actions: [
            IconButton(onPressed: (() {}), icon: const Icon(Icons.camera_alt)),
            IconButton(onPressed: (() {}), icon: const Icon(Icons.search)),
          ],
          bottom: const TabBar(tabs: [
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            )
          ]),
        ),
        body: const TabBarView(children: [mobile_body(), status()]),
        drawer: const mobile_drawer(),
      ),
    );
  }
}
