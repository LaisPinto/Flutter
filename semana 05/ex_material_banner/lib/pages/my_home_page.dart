import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget text(String message) {
    return Text(message);
  }
  Widget button() {
    return ElevatedButton(
        onPressed: _sendMaterialBanner,
        child: text('show material banner')
    );
  }
  _sendMaterialBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
          content: text('Opa, material banner aqui'),
          contentTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
          backgroundColor: Colors.green,
          leadingPadding: const EdgeInsets.only(right: 30),
          leading: const Icon(Icons.info, size: 32, color: Colors.white,),
          actions: [
            TextButton(
              onPressed: () => _sendHello(),
                child: text('ok'),
            ),
            TextButton(
                onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
                child: text('cancel'),
            ),
          ]
      )
    );
  }
  _sendHello() {
    print('ola');
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: button(),
          )
        ],
      )
    );
  }
}
