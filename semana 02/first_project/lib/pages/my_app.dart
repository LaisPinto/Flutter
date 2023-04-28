import 'package:flutter/material.dart';

import 'export_pages.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp :-)',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: const MyHomePage(title: 'MyApp :-)'),
    );
  }
}