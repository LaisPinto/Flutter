import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ForCafféApp',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'ForCafféApp'),
    );
  }
}

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

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Stack(children: [
          Container(
              decoration: _width < _height
                  ? const BoxDecoration(image: DecorationImage(image: AssetImage('images/fundo.jpg')))
                  : const BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage('images/fundodois.jpg'),
                      fit: BoxFit.cover,
                    ))),
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.brown.shade400,
                      width: _width,
                      child: Center(
                        child: Text(
                          'ForCaffé',
                          style: TextStyle(fontSize: 40, color: Colors.green.shade900, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: (_height * 25) / 100,
                      width: (_width * 95) / 100,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.80),
                        border: Border.all(width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: (_width * 45) / 100,
                            child: const Text(
                              'O Forcaffé é uma cafeteria com o conceito take-away, estilo, pagou e leva embora, '
                              'aquele lugar perfeito para quem ama café, doces e salgados, '
                              'mas que com a correria do dia a dia não pode ficar muito tempo parado.',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Image.asset('images/forcaffe.png', width: (_width * 46) / 100),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: (_height * 35) / 100,
                      width: (_width * 95) / 100,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.80),
                        border: Border.all(width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '170 Reviews',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.5,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.kitchen, color: Colors.green[500]),
                                    const Text('\nPREP: ' '\n25 min', style: TextStyle(fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.timer, color: Colors.green[500]),
                                    const Text('\nCOOK:' '\n1 hr', style: TextStyle(fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.restaurant, color: Colors.green[500]),
                                    const Text('\nFEEDS:' '\n4-6', style: TextStyle(fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset('images/forcaffedois.png')
                  ],
                )
              ],
            ),
          ),
        ]));
  }
}
