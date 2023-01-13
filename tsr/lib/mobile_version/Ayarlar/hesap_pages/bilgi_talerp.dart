import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Hesap_mobile/hesap_mobile.dart';

class bilgi_talep extends StatefulWidget {
  const bilgi_talep({super.key});

  @override
  State<bilgi_talep> createState() => _bilgi_talepState();
}

class _bilgi_talepState extends State<bilgi_talep> {
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
        title: const Text('Hesap Bilgilerini Talep Et'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: const Image(
              image: AssetImage('images/file.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
                'Başka bir uygulamayla erişebileceğiniz veya başka bir uygulamaya yönlendirebileceğiniz, WhatsApp hesap bilgileri ve ayarlarını içeren bir rapor oluşturun. Bu rapor, mesajlarınızı içermez.'),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Daha fazla bilgi',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const Divider(),
          InkWell(
            child: const ListTile(
              leading: Icon(Icons.file_copy),
              title: Text('Raporu Talep Et'),
            ),
            onTap: () {},
          ),
          const Divider()
        ],
      ),
    );
  }
}
