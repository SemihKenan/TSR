import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../hesap_mobile.dart';

class dogrulama extends StatefulWidget {
  const dogrulama({super.key});

  @override
  State<dogrulama> createState() => _dogrulamaState();
}

class _dogrulamaState extends State<dogrulama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const hesap_mobile(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('İki Adımlı Doğrulama'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: const Image(image: AssetImage('images/dogrulama.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
                'Daha fazla güvenlik sağlamak için iki adımlı doğrulamayı açın. Bu özellik telefon numaranızla WhatsApp tekrar kaydolurken bir anahtar girmenizi gerektirecek.'),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 60,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: const Text('Aç',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
