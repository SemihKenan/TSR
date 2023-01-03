import 'package:flutter/material.dart';
import 'package:tsr/Chats/Mike.dart';
import 'package:tsr/Widgets/build_menu_item.dart';

class body extends StatefulWidget {
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            color: Colors.grey,
            child: Column(
              children: [
                InkWell(
                  focusColor: Colors.black,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const mike(),
                      ),
                    );
                  },
                  child: buildMenuItem(
                    text: 'Mike',
                    Avatar: const AssetImage('images/photo1.jpg'),
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
                    last_time: '12.20',
                    Avatar: const AssetImage('images/photo3.png'),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const mike(),
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
                      last_time: '12.20',
                      Avatar: const AssetImage('images/photo.png')),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const mike(),
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
                      Avatar: const AssetImage('images/photo5.png')),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const mike(),
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
                      last_time: '12.20',
                      Avatar: const AssetImage('images/photo4.jpg')),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const mike(),
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
                      last_time: '12.20',
                      Avatar: const AssetImage('images/photo6.jpg')),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const mike(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
