import 'package:flutter/material.dart';

Widget buildMenuItem({
  required String text,
  required String last_time,
  required String subtitle,
  required AssetImage Avatar,
}) {
  const color = Colors.white;
  const hoverColor = Colors.white70;
  VoidCallback? onClicked;
  return ListTile(
    leading: CircleAvatar(backgroundImage: Avatar),
    title: Text(text, style: const TextStyle(color: color)),
    subtitle: Text(subtitle, style: TextStyle(color: Colors.white70)),
    trailing: Text(last_time, style: TextStyle(color: Colors.white70)),
    hoverColor: hoverColor,
  );
}
