import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Hesap_mobile/hesap_mobile.dart';

class numaradegis extends StatefulWidget {
  const numaradegis({super.key});

  @override
  State<numaradegis> createState() => _numaradegisState();
}

class _numaradegisState extends State<numaradegis> {
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
        title: const Text('Numara Değiştir'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            child: const Image(
              image: AssetImage('images/phone.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                'Telefon numaranızı değiştiriğinizde hesap bilgileriniz, gruplarınız ve ayarlarınız taşınır.'),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
                'Devam etmeden önce lütfen yeni numaranızdan SMS ve arama alabildiğinize emin olun'),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
                'Eğer hem telefoonunuz hem de numaranız yeniyse lütfen öncelikle eski telefonunuzdan numaranızı değiştirin.'),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 70,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.green),
              child: const Text(
                'İleri',
                textAlign: TextAlign.center,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
