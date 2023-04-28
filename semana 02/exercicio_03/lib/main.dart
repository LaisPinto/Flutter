import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container(
              color: Colors.cyan,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.ac_unit)
                ],
              ),
            ),),
            Expanded(child: Container(
              color: Colors.cyan,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                ],
              ),
            ),),
            Expanded(child: Container(
              color: Colors.cyan,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                ],
              ),
            ),),
            Expanded(child: Container(
              color: Colors.cyan,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                ],
              ),
            ),),
            Expanded(child: Container(
              color: Colors.cyan,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                ],
              ),
            ),),
            Expanded(child: Container(
              color: Colors.cyan,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                  Icon(Icons.ac_unit),
                ],
              ),
            ),),

          ],
        ),
      ),
    );
  }
}
