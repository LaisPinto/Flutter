import 'package:flutter/material.dart';

import '_export_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter challenge - Json List',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'flutter challenge - Json List'),
    );
  }
}