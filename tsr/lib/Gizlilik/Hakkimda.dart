import 'package:flutter/material.dart';
import 'package:tsr/Gizlilik/Gizlilik.dart';

class hakkimda extends StatefulWidget {
  const hakkimda({super.key});
  @override
  State<hakkimda> createState() => _hakkimdaState();
}

class _hakkimdaState extends State<hakkimda> {
  @override
  bool? herkes = false;
  bool? kisiler = true;
  bool? secili = false;
  bool? hickimse = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Hesap(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Hakkımda'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text('Hakkımda Bilgimi Kimler Görebilir'),
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: herkes,
            onChanged: (bool? value) {
              setState(() {
                herkes = value;
              });
            },
            title: Text("Herkes"),
          ),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: kisiler,
            onChanged: (bool? value) {
              setState(() {
                kisiler = value;
              });
            },
            title: Text("Kişiler"),
          ),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: secili,
            onChanged: (bool? value) {
              setState(() {
                secili = value;
              });
            },
            title: Text("Seçili Olanlar"),
          ),
          CheckboxListTile(
            //checkbox positioned at right
            value: hickimse,
            onChanged: (bool? value) {
              setState(() {
                hickimse = value;
              });
            },
            title: Text("Hiç kimse"),
          ),
        ],
      ),
    );
  }
}
