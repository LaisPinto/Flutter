import 'dart:async';

import 'package:flutter/material.dart';

import '../app/_export_app.dart';

class APage extends StatefulWidget {
  const APage({Key? key}) : super(key: key);

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  @override
  Widget build(BuildContext context) {

    String _name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina A'),
      ),
      body: Column(
        children: [
          Text('Olá $_name, seja bem vindo', style: const TextStyle(fontSize: 30),),
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
