import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../_export_core.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ex Easy Localization',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Ex Easy Localization'),
    );
  }
}