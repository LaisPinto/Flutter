import 'package:flutter/material.dart';

import 'export_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Poc Font_Lato',
      theme: ThemeData(
        useMaterial3: true,
          // fontFamily: "Lato"
      ),
      home: const MyHomePage(title: 'Poc Font_Lato'),
    );
  }
}
