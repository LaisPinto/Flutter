import 'package:flutter/material.dart';
import '../model/mock_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //variavel
  final mock = MockModel();

  Container _container(int index) {
    return Container(
      height: 350,
      color: Colors.red[mock.colorCode[index]],
      child: Center(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text(mock.entries[index]),
          )
      ),
    );
  }

  ListView _listView() {
    return ListView.builder(
      padding: const EdgeInsets.all(20.0),
      itemCount: mock.entries.length,
      itemBuilder: (BuildContext context, int index) {
        return _container(index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title),),
        body: _listView()
    );
  }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(title: Text(widget.title),),
//     body: ListView(
//       children: [
//         Container(
//           color: Colors.deepOrange,
//           height: 350,
//           width: double.infinity,
//         ),
//         Container(
//           color: Colors.orange,
//           height: 350,
//           width: double.infinity,
//         ),
//         Container(
//           color: Colors.green,
//           height: 350,
//           width: double.infinity,
//         ),
//       ],
//     )
//   );
//}
}