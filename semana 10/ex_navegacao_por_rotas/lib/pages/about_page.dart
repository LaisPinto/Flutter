import 'dart:async';

import 'package:flutter/material.dart';

import '../app/_export_app.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina Sobre'),
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
