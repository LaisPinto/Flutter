import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BPage extends StatefulWidget {
  const BPage({Key? key}) : super(key: key);

  @override
  State<BPage> createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('Pagina B'),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () => context.go('/'),
                child: const Text('Voltar para home')
            ),
            ElevatedButton(
                onPressed: () => context.go('/home_abc/a'),
                child: const Text('Ir para a A')
            ),
          ],
        )
    );
  }
}
