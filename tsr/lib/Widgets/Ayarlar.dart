import 'package:flutter/material.dart';

Widget ayar({
  required String text,
  required String subtitle,
}) {
  return ListTile(
    title: Text(text),
    subtitle: Text(subtitle),
  );
}
