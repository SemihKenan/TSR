import 'package:flutter/material.dart';
import 'package:tsr/Widgets/mobilhesap.dart';
import 'package:tsr/mobile_version/Ayarlar/Hesap_mobile/hesap_mobile.dart';

class guvenlik extends StatefulWidget {
  const guvenlik({super.key});

  @override
  State<guvenlik> createState() => _guvenlikState();
}

class _guvenlikState extends State<guvenlik> {
  bool? guvenlik_bildirimi = false;
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
        title: const Text('Güvenlik Bildirimleri'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            alignment: Alignment.topCenter,
            child: const Image(
              image: AssetImage('images/lock.png'),
            ),
          ),
          const Divider(),
          const Text(
              'Uçtan uca şifreleme özelliği sayesinde kişisel mesajlarınız ve aramalarınız seçtiğiniz kişilerle aranızda kalır. WhatsApp bile bu içerikleri okuyamaz veya dinleyemez. Bu içerikler arasında aşağıdakiler bulunur'),
          hesap(
              ikon: const Icon(Icons.message),
              yazimiz: 'Yazılı ve sesli mesaj',
              renk: Colors.black),
          hesap(
              ikon: const Icon(Icons.phone),
              yazimiz: 'Sesli ve görüntülü aramalarınız',
              renk: Colors.black),
          hesap(
              ikon: const Icon(Icons.attach_file),
              yazimiz: 'Fotoğraf, Video ve Belgeleriniz',
              renk: Colors.black),
          hesap(
              ikon: const Icon(Icons.location_pin),
              yazimiz: 'Konum Paylaşımlarınız',
              renk: Colors.black),
          hesap(
              ikon: const Icon(Icons.live_tv),
              yazimiz: 'Durum Güncellemeleriniz',
              renk: Colors.black),
          Container(
            alignment: Alignment.topLeft,
            child: const Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 10),
              child: Text(
                'Daha fazla bilgi',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          const Divider(),
          CheckboxListTile(
            value: guvenlik_bildirimi,
            onChanged: (bool? value) {
              setState(() {
                guvenlik_bildirimi = value;
              });
            },
            title: const Text('Bu Cihazda Güvenlik bildirimlerini Göster'),
            subtitle: const Text(
                'Uçtan uca şifrelenmiş bir sohbetteki herhangi bir kişinin telefonu için güvenlik kodunuz değiştiğinde bildirim alın. Birden fazla cihazınız varsa bildirim almak istediğiniz her cihazda bu ayarın etkinleştirilmesi gerekir.'),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Padding(
              padding: EdgeInsets.only(top: 5, left: 15.0, bottom: 10),
              child: Text(
                'Daha fazla bilgi',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
