import 'package:easy_localization/easy_localization.dart';
import 'package:ex_easy_localization/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';

//passo 1: colocar a lib
//passo 2: criar estrutura de assets
//passo 3: liberar assets yaml
//passo 4: main (EasyLocalization/FlutterBinding)
//passo 5: material app
//passo 6: criar as chaves em translations...
//passo 7: comandos codegen_loader.g e loader_keys.g

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
            Text(LocaleKeys.message.tr(args: ['Flutter', 'Dart'])),
            Text(LocaleKeys.message_named.tr(namedArgs: {"language": "Java"})),
            Text(LocaleKeys.message_mixed
                .tr(args: ['Flutter'], namedArgs: {"language": "Dart"})),
            Text(LocaleKeys.example_helloWorld.tr()),
            Text(LocaleKeys.screens_home_title_message.tr()),
            Text(
              LocaleKeys.hello.tr(),
            ),
            const Text('lais'),
          ],
        ));
  }
}
