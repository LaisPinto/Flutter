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
  _sendSnackbar() {
    final snackbar = SnackBar(
        content: text('ola, Snackbar'),
        action: SnackBarAction(
          label: 'cancelar',
         onPressed: () => _dismissSnackbar()),
        duration: const Duration(seconds: 2),
    );

    //scaffold - context
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  _dismissSnackbar() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  Widget outButton() {
    return OutlinedButton(
        onPressed: () {
          _sendSnackbar();
        },
        child: text('show snackbar')
    );
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
            child: outButton(),
          )
        ],
      )
    );
  }


}
