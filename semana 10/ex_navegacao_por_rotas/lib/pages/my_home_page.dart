import 'dart:async';


import 'package:flutter/material.dart';

import '../app/_export_app.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Timer(const Duration(milliseconds: 400), () =>
                  Navigator.pushNamed(
                      context,
                      AppRoutes.appRoutesAPage,
                      arguments: 'Laís Pinto')
                  );
                },
                child: const Text('Abrir pagina A')
            ),
            ElevatedButton(
                onPressed: () {
                  Timer(const Duration(milliseconds: 400), () =>
                      Navigator.pushNamed(
                          context,
                          AppRoutes.appRoutesBPage
                      )
                  );
                },
                child: const Text('Abrir pagina B')
            ),
            ElevatedButton(
                onPressed: () {
                  Timer(const Duration(milliseconds: 400), () =>
                      Navigator.pushNamed(
                          context,
                          AppRoutes.appRoutesAboutPage
                      )
                  );
                },
                child: const Text('Abrir pagina Sobre')
            ),
          ],
        )
    );
  }
}