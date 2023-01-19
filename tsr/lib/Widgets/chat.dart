import 'package:flutter/material.dart';

Widget chat({
  required String text,
  required String last_time,
}) {
  return ListTile(
    title: Text(text),
    trailing: Text(last_time),
  );
}
