import 'package:flutter/material.dart';

import '_export_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navegacao Simples Material Page Router',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true
      ),
      home: const MyHomePage(title: 'Flutter Navegacao Simples Material Page Router'),
    );
  }
}