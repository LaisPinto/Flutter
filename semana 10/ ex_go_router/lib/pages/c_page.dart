import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CPage extends StatefulWidget {
  const CPage({Key? key}) : super(key: key);

  @override
  State<CPage> createState() => _CPageState();
}

class _CPageState extends State<CPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('Pagina C'),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () => context.go('/'),
                child: const Text('Voltar para home')
            ),
            ElevatedButton(
                onPressed: () => context.go('/home_abc/a/b'),
                child: const Text('Ir para a b')
            ),
          ],
        )
    );
  }
}
