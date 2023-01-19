import 'package:flutter/material.dart';
import 'package:tsr/Desktop/Gizlilik/Gizlilik.dart';

import 'package:tsr/Desktop/Screens/HomePage.dart';
import 'package:tsr/Desktop/Screens/Status.dart';
import 'package:tsr/mobile_version/Ayarlar/Gizlilik_mobile/gizlilik_mobil.dart';
import 'package:tsr/mobile_version/Screens/homepage_mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final ekran = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      //home: ekran < 500 ? const homepage_mobile() : HomePage(),
    );
  }
}
