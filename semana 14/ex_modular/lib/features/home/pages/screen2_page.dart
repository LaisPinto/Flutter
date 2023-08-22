import 'package:ex_modular/core/util/core_util.dart';
import 'package:ex_modular/features/home/_export_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Screen2Page extends StatelessWidget {
  Person person;
   Screen2Page({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tela 2'),
        ),
        body: Column(
          children: [
            const Text('tela 2'),
             Text("Ola, seja bem vindo ${person.name}"),
             Text(
               "${
                  CoreUtil.convertStringToLowerCase(
                    value: person.name.toString(),
               )}",
             ),
            Text(
              "${
                  HomeUtil.getThreeChars(velue: person.name.toString())}",
            ),
            ElevatedButton(
              onPressed: _launchHome,
              child: const Text('go to Home'),
            ),
          ],
        )
    );
  }

  _launchHome() => Modular.to.pop();
}

