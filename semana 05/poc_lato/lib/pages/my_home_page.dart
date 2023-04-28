import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    LicenseRegistry.addLicense(() async* {
      final license = await rootBundle.loadString('google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    });

    Widget text(String message) {
      return Text(message);
    }
    Widget column1Container() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.green,
                width: _width,
                child: Center(
                  child: text('Google_fonts'),

                ),
              )
            ],
          )
        ],
      );
    }
    Widget column2Container() {
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: (_width * 100) / 100,
              height: (_height * 20) / 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 1)
              ),
              child: Column(
                children: [
                  Container(
                    width: (_width * 100) / 100,
                    child:  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                        style: GoogleFonts.lato(
                            //color: Colors.black, fontWeight: FontWeight.bold
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
    Widget column3Container() {
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: (_width * 100) / 100,
              height: (_height * 20) / 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 1)
              ),
              child: Column(
                children: [
                  Container(
                    width: (_width * 100) / 100,
                    child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                        style: TextStyle(fontFamily: 'Lato')),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
    Widget column4Container() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.green,
                width: _width,
                child: Center(
                  child: text('Lato_fonts'),

                ),
              )
            ],
          )
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: text(widget.title),
      ),
      body: Column(
        children: [
          column1Container(),
          const SizedBox(height: 10,),
          column2Container(),
          const SizedBox(height: 10,),
          column4Container(),
          const SizedBox(height: 10,),
          column3Container(),
        ],
      )
    );
  }
}
