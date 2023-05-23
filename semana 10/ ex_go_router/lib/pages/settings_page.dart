import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text('Pagina de configuration'),
        ),
        body: Column(
          children: [
            Text('Ola ${widget.name}, tudo bem?!', style: TextStyle(fontSize: 30),),
            ElevatedButton(
                onPressed: () => context.go('/'),
                child: const Text('Voltar para home')
            )
          ],
        )
    );
  }
}
