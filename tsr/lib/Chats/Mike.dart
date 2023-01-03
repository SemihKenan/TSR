import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tsr/Widgets/chat.dart';

class mike extends StatefulWidget {
  const mike({super.key});

  @override
  State<mike> createState() => _mikeState();
}

class _mikeState extends State<mike> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('images/photo1.jpg'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text('Mike', style: TextStyle(fontSize: 15)),
            const Text('Son Görülme: 6 dakika önce',
                style: TextStyle(fontSize: 10)),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(Icons.attach_file),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      filled: true, fillColor: Colors.grey, hintText: 'chat'),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.send),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.mic)
            ],
          ),
        ),
      ),
    );
  }
}
