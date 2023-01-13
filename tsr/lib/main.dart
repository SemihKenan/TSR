import 'package:flutter/material.dart';
import 'package:tsr/Desktop/Chats/Mike.dart';
import 'package:tsr/Desktop/Gizlilik/Gizlilik.dart';
import 'package:tsr/Desktop/Screens/HomePage.dart';
import 'package:tsr/mobile_version/Ayarlar/Hesap_mobile/hesap_mobile.dart';
import 'package:tsr/mobile_version/Screens/homepage_mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const homepage_mobile());
  }
}
