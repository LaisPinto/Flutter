import 'package:flutter/material.dart';

class Screen1InternalPageA extends StatelessWidget {
  const Screen1InternalPageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tela A'),
        ),
        body: const Column(
          children: [
            Text('tela A')
          ],
        )
    );
  }
}

