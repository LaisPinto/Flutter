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
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(
                    child:Container(
                          height: 100,
                          color: Colors.cyanAccent,
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:Container(
                          height: 30,
                          color: Colors.white,
                        )
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                          height: 100,
                          color: Colors.black12,
                        )
                    ),
                Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.black,
                    )
                ),
                Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.black54,
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:Container(
                          height: 30,
                          color: Colors.white,
                    )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    Container(
                          height: 300,
                          width: 180,
                          color: Colors.cyanAccent,
                    ),
                    Container(
                          height: 300,
                          width: 180,
                          color: Colors.cyan,
                    )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:Container(
                          height: 30,
                          color: Colors.white,
                    )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 105,
                  width: 90,
                  color: Colors.black12,
                ),
                Container(
                  height: 105,
                  width: 90,
                  color: Colors.black,
                ),
                Container(
                  height: 105,
                  width: 90,
                  color: Colors.black54,
                ),
                Container(
                  height: 105,
                  width: 90,
                  color: Colors.black45,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
