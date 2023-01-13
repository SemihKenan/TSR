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
        title: const Text('Numara Deüiştir'),
      ),
    );
  }
}
