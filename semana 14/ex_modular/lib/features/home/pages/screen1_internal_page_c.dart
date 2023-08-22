import 'package:flutter/material.dart';

class Screen1InternalPageC extends StatelessWidget {
  const Screen1InternalPageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tela C'),
        ),
        body: const Column(
          children: [
            Text('tela C')
          ],
        )
    );
  }
}

