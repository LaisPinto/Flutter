import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';

import 'export_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: Asuka.builder,
      navigatorObservers: [
        Asuka.asukaHeroController
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Alert',
      theme: ThemeData(
        // colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Alert'),
    );
  }
}
