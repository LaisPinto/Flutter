import 'package:flutter/material.dart';

import '_export_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PhotoView In Flutter',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff2c3b48),
        //useMaterial3: true
      ),
      home: const MyHomePage(title: 'Infrografico',),
    );
  }
}