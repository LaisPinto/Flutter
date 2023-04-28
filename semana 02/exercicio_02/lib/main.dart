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
        body:
        Column(
          children: [
            Row(
                children:  [
                  Expanded(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                          ],
                        ),
                      )
                  )


                ]
            ),
            Row(
                children:  [
                  Expanded(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                          ],
                        ),
                      )
                  )


                ]
            ),
            Row(
                children:  [
                  Expanded(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                          ],
                        ),
                      )
                  )


                ]
            ),
            Row(
                children:  [
                  Expanded(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                          ],
                        ),
                      )
                  )


                ]
            ),
            Row(
                children:  [
                  Expanded(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                          ],
                        ),
                      )
                  )


                ]
            ),
            Row(
                children:  [
                  Expanded(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                            Icon(Icons.ice_skating),
                          ],
                        ),
                      )
                  )


                ]
            ),
          ],
        ),
      ),
    );
  }
}
