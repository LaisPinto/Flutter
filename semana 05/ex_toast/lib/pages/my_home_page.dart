import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget text(String message ) {
    return Text(message);
  }

  Widget textButton() {
    return TextButton(
        onPressed: () {
          print('clicou');

          Fluttertoast.showToast(
            msg: 'Oi, toast',
            toastLength:  Toast.LENGTH_LONG,
            fontSize: 40.0
          );
        },
        child: text('Show toast')
    );
  }

  Widget textButton2() {
    return TextButton(
        onPressed: () {
          print('clicou');

          Fluttertoast.showToast(
            msg: 'dia de inteeer',
            toastLength:  Toast.LENGTH_LONG,
            fontSize: 16.0
          );
        },
        child: text('Show toast')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: text(widget.title),
        ),
        body: Column(
          children: [
            textButton(),
            textButton2()
          ],
        )
    );
  }
}

