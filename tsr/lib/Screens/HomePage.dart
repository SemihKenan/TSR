import 'package:flutter/material.dart';
import 'package:tsr/Screens/body.dart';
import 'package:tsr/Widgets/Drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/photo2.png'),
            ),
          ),
        ],
      ),
      body: const body(),
      drawer: NavigationDrawer(),
    );
  }
}
