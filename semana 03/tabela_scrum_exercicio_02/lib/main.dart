import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quadro Scrum Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quadro Scrum Flutter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    height: (_height * 10) / 100,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text(''),
                    )),
              ),
              Expanded(
                child: Container(
                    height: (_height * 10) / 100,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text('Backlog'),
                    )),
              ),
              Expanded(
                child: Container(
                    height: (_height * 10) / 100,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text('A Fazer'),
                    )),
              ),
              Expanded(
                child: Container(
                    height: (_height * 10) / 100,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text('Fazendo'),
                    )),
              ),
              Expanded(
                child: Container(
                    height: (_height * 10) / 100,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text('Em Revisão'),
                    )),
              ),
              Expanded(
                child: Container(
                    height: (_height * 10) / 100,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text('Feito'),
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    height: (_height * 10) / 100,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text('Histório do usuario 1'),
                    )),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    height: (_height * 10) / 100,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text('Histório do usuario 2'),
                    )),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    height: (_height * 10) / 100,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text('Histório do usuario 3'),
                    )),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    height: (_height * 10) / 100,
                    color: Colors.blueGrey,
                    child: const Center(
                      child: Text('Histório do usuario 4'),
                    )),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
