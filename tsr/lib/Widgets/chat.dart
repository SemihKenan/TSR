import 'package:flutter/material.dart';

Widget chat({
  required String text,
  required String last_time,
}) {
  // return Container(
  //   decoration: BoxDecoration(
  //       color: Colors.grey,
  //       border: Border.all(width: 1),
  //       borderRadius: BorderRadius.circular(15)),
  //   margin: const EdgeInsets.symmetric(vertical: 5),
  //   padding: const EdgeInsets.all(10),
  // child:
  return ListTile(
    title: Text(text),
    trailing: Text(last_time),
  );
}
