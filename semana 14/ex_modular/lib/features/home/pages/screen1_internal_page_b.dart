import 'package:flutter/material.dart';

class Screen1InternalPageB extends StatelessWidget {
  const Screen1InternalPageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tela B'),
        ),
        body: const Column(
          children: [
            Text('tela B')
          ],
        )
    );
  }
}

