import 'package:ex_month/model/exports_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final month = Month(10);

  Text _columnTextMonth() =>
      Text("${month.varMonth ?? "Mês não informado"}",
        style: const TextStyle(fontSize: 30),);

  Text _columnTextMonthCheck() =>
      Text(MonthCheck.checkMonth(month.varMonth),
        style: const TextStyle(fontSize: 30),);

  TextField _columnTextField() => TextField(
    decoration: const InputDecoration(
        hintText: 'Digite o seu Mês'
    ),
    key: const Key('input-month'),
    onChanged: (value) {
      _changeMonth(value);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          _columnTextField(),
          _columnTextMonth(),
          _columnTextMonthCheck(),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    debugPrint("InitState");
    //debugPrint("Check Month ${month.checkMonth()}");
  }
  @override
  void dispose() => super.dispose();

  _changeMonth(String value) {
    debugPrint("Valor digitado: $value");
    setState(() {
      month.varMonth = int.tryParse(value);
    });
  }
}