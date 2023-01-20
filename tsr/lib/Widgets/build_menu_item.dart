import 'package:flutter/material.dart';

Widget buildMenuItem({
  required String text,
  required String last_time,
  required String subtitle,
  required AssetImage avatar,
}) {
  const color = Colors.black;
  return Card(
    child: ListTile(
      leading: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 40,
          child: CircleAvatar(radius: 23, backgroundImage: avatar)),
      title: Text(text, style: const TextStyle(color: color)),
      subtitle: Text(subtitle, style: const TextStyle(color: color)),
      trailing: Text(last_time, style: const TextStyle(color: color)),
    ),
  );
}
