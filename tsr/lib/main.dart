import 'package:flutter/material.dart';
import 'package:tsr/Desktop/Screens/HomePage.dart';
import 'package:tsr/mobile_version/Ayarlar/Gizlilik_mobile/gizlilik_mobil.dart';
import 'package:tsr/mobile_version/Screens/homepage_mobile.dart';
import 'package:tsr/mobile_version/Screens/mobile_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const homepage_mobile(),
    );
  }
}
