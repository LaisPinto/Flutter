import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    const double containerHeight = 800;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: containerHeight,
              width: double.infinity,
              color: Colors.deepOrange,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: containerHeight,
              width: double.infinity,
              color: Colors.green,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: containerHeight,
              width: double.infinity,
              color: Colors.amber,
            ),
          ],
        ),
      )
    );
  }
}

