import 'package:flutter/material.dart';

import '../app/_export_app.dart';
import '_export_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter navegação por rotas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true
      ),
      initialRoute: '/',
      //home: const MyHomePage(title: 'Flutter navegação por rotas'),
      onGenerateRoute: App().getAppRoutes().getRoutes,
    );
  }
}