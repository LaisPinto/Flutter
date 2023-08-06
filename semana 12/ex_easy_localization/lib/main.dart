import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/_export_core.dart';

void main() async {
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('pt', 'BR'),
      ], 
      path: 'assets/translations',
      //assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    )
  );
}




