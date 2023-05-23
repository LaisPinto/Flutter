
import 'package:flutter/material.dart';

import '_export_app.dart';

class App extends StatelessWidget {

  static const App _instance = App._internal();

  const App._internal();

   factory App() => _instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: getAppRoutes().getRoutes,
    );
  }


  AppRoutes getAppRoutes() => AppRoutes();
}
