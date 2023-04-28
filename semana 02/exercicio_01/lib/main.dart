import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'exercicio 01',
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          color: Colors.yellow,
                        )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.red,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.blue,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.green,
                        // )
                      ],
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.yellow,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          color: Colors.red,
                        )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.blue,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.green,
                        // )
                      ],
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.yellow,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.red,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          color: Colors.blue,
                        )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.green,
                        // )
                      ],
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.yellow,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.red,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.blue,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          color: Colors.green,
                        )
                      ],
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.yellow,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.red,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          color: Colors.blue,
                        )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.green,
                        // )
                      ],
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.yellow,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          color: Colors.red,
                        )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.blue,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.green,
                        // )
                      ],
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          color: Colors.yellow,
                        )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.red,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.blue,
                        // )
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      children: [
                        // Container(
                        //   height: 50,
                        //   color: Colors.green,
                        // )
                      ],
                    )
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
