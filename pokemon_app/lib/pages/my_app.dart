import 'package:flutter/material.dart';

import '_export_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokémon App ',
      theme: ThemeData(
        colorSchemeSeed: Colors.yellow,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.yellow,
        )
      ),
      home: const MyHomePage(title: 'Pokédex'),
    );
  }
}
