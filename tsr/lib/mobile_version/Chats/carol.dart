import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsr/mobile_version/Screens/homepage_mobile.dart';

class carol_mobile extends StatefulWidget {
  const carol_mobile({super.key});

  @override
  State<carol_mobile> createState() => _carolState();
}

class _carolState extends State<carol_mobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/photo6.jpg'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text('Carol', style: TextStyle(fontSize: 15)),
                const Text('Son Görülme: 13.26',
                    style: TextStyle(fontSize: 10)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (() {}), icon: const Icon(Icons.video_camera_back)),
          IconButton(onPressed: (() {}), icon: const Icon(Icons.camera)),
          IconButton(onPressed: (() {}), icon: const Icon(Icons.more_vert))
        ],
      )),
    );
  }
}
