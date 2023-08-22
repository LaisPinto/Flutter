import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ScreenNotFoundPage extends StatelessWidget {
  const ScreenNotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('PAGINA NÃO ENCONTRADA, SORRY'),
        ),
        body: Column(
          children: [
            const Text('PAGINA NÃO ENCONTRADA, SORRY'),
            ElevatedButton(
              onPressed: _launchHome,
              child: const Text('go to Home'),
            ),
          ],
        )
    );
  }

  _launchHome() => Modular.to.pop();
}

