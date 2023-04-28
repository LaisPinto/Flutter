import 'package:flutter/material.dart';

import 'export_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter remove HTML By RegExp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter remove HTML By RegExpFlutter remove HTML By RegExp'),
    );
  }
}