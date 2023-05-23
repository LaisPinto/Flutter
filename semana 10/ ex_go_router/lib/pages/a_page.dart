import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class APege extends StatefulWidget {
  const APege({Key? key}) : super(key: key);

  @override
  State<APege> createState() => _APegeState();
}

class _APegeState extends State<APege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('Pagina A'),
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
            ElevatedButton(
                onPressed: () => context.go('/home_abc'),
                child: const Text('Ir para a home ABC')
            ),
          ],
        )
    );
  }
}
