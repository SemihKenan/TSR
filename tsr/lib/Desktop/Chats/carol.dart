import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Screens/HomePage.dart';

class carol extends StatefulWidget {
  const carol({super.key});

  @override
  State<carol> createState() => _carolState();
}

class _carolState extends State<carol> {
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
                builder: (context) => const HomePage(),
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
          IconButton(onPressed: (() {}), icon: const Icon(Icons.search)),
          IconButton(onPressed: (() {}), icon: const Icon(Icons.more_vert))
        ],
      )),
    );
  }
}
