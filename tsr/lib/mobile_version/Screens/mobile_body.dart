import 'package:flutter/material.dart';
import 'package:tsr/mobile_version/Chats/Mike.dart';
import 'package:tsr/mobile_version/Chats/carol.dart';
import 'package:tsr/mobile_version/Chats/kevin.dart';
import 'package:tsr/mobile_version/Chats/lucy.dart';
import 'package:tsr/mobile_version/Chats/nancy.dart';
import '../../Widgets/build_menu_item.dart';
import '../Chats/jake.dart';

class mobile_body extends StatefulWidget {
  const mobile_body({super.key});

  @override
  State<mobile_body> createState() => _mobile_bodyState();
}

class _mobile_bodyState extends State<mobile_body> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        InkWell(
          focusColor: Colors.black,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const mike_mobile(),
              ),
            );
          },
          child: buildMenuItem(
            text: 'Mike',
            avatar: const AssetImage('images/photo1.jpg'),
            subtitle: 'hi',
            last_time: '18.00',
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          child: buildMenuItem(
            text: 'Kevin',
            subtitle: 'hi',
            last_time: '16.34',
            avatar: const AssetImage('images/photo3.png'),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const kevin_mobile(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          child: buildMenuItem(
              text: 'Lucy',
              subtitle: 'hi',
              last_time: '11.43',
              avatar: const AssetImage('images/photo.png')),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const lucy_mobile(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          child: buildMenuItem(
              text: 'Nancy',
              subtitle: 'hi',
              last_time: '12.20',
              avatar: const AssetImage('images/photo5.png')),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const nancy_mobile(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          child: buildMenuItem(
              text: 'Jake',
              subtitle: 'hi',
              last_time: '11.09',
              avatar: const AssetImage('images/photo4.jpg')),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const jake_mobile(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          child: buildMenuItem(
              text: 'Carol',
              subtitle: 'hi',
              last_time: '08.40',
              avatar: const AssetImage('images/photo6.jpg')),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const carol_mobile(),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: Icon(Icons.message),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
