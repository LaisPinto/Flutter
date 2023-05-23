import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeABCPage extends StatefulWidget {
  const HomeABCPage({Key? key}) : super(key: key);

  @override
  State<HomeABCPage> createState() => _HomeABCPageState();
}

class _HomeABCPageState extends State<HomeABCPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Home ABC'),
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
            ElevatedButton(
                onPressed: () => context.go('/home_abc/a/b'),
                child: const Text('Ir para a B')
            ),
            ElevatedButton(
                onPressed: () => context.go('/home_abc/a/b/c'),
                child: const Text('Ir para a C - go')
            ),
            ElevatedButton(
                onPressed: () => context.push('/home_abc/a/b/c'),
                child: const Text('Ir para a C - push')
            ),
          ],
        )
    );
  }
}
