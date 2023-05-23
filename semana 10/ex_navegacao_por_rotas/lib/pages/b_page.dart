import 'dart:async';

import 'package:flutter/material.dart';

import '../app/_export_app.dart';

class BPage extends StatefulWidget {
  const BPage({Key? key}) : super(key: key);

  @override
  State<BPage> createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina B'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Timer(const Duration(milliseconds: 400), () =>
                    Navigator.pop(context)
                );
              },
              child: const Text('Voltar para a Home')
          )
        ],
      ),
    );
  }
}
