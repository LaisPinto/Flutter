import 'package:flutter/material.dart';

class APage extends StatefulWidget {
  const APage({Key? key}) : super(key: key);

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina A'),
      ),
      body: Column(
        children: const [
          Text('lais')
        ],
      ),
    );
  }
}
