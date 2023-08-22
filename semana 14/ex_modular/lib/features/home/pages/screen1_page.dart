import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Screen1Page extends StatelessWidget {
  const Screen1Page({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tela 1'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: _launchHome,
              child: const Text('go to Home'),
            ),
            Column(
              children: [
                ListTile(
                  title: Text('Internal Page A'),
                  onTap: _launchPageA,
                ),
                ListTile(
                  title: const Text('Internal Page B'),
                  onTap: _launchPageB,
                ),
                ListTile(
                  title: const Text('Internal Page C'),
                  onTap: _launchPageC,
                ),
              ],
            ),
            const Expanded(child: RouterOutlet())
          ],
        )
    );
  }

  _launchHome() => Modular.to.pop();
  _launchPageA() => Modular.to.pushNamed('/screen1/internal_page_a');
  _launchPageB() => Modular.to.pushNamed('/screen1/internal_page_b');
  _launchPageC() => Modular.to.pushNamed('/screen1/internal_page_c');
}

