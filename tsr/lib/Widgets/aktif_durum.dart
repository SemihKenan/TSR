import 'package:flutter/material.dart';

Widget aktifdurum({
  required AssetImage profilresmi,
  required String isim,
}) {
  const color = Colors.green;
  return Row(
    children: [
      Stack(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: profilresmi,
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 15,
              width: 15,
              decoration: const BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        width: 10,
      ),
      Text(isim)
    ],
  );
}
