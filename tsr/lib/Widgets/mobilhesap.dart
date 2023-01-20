import 'package:flutter/material.dart';

Widget hesap(
    {required Icon ikon, required String yazimiz, required Color renk}) {
  return ListTile(
    leading: ikon,
    title: Text(
      yazimiz,
      style: TextStyle(color: renk),
    ),
  );
}
