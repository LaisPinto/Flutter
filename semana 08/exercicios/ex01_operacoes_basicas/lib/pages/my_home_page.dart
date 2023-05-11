import 'package:ex01_operacoes_basicas/model/calculator_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _number1Controller;
  late TextEditingController _number2Controller;

  double _calculateSum = 0.0;
  double _calculateSubtration = 0.0;
  double _calculateDivision = 0.0;
  double _calculateMultiplication = 0.0;

  Icon _rowIcon() {
    return const Icon(Icons.calculate, size: 100,);
  }

  TextFormField _rowNumber1() {
    return TextFormField(
      controller: _number1Controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          hintText: "Digite o primeiro valor"
      ),
      maxLength: 10,
      validator: (value) {
        if(value!.length < 2) {
          return "Digite um valor valido";
        }
        return null;
      },
    );
  }
  TextFormField _rowNumber2() {
    return TextFormField(
      controller: _number2Controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          hintText: "Digite o segundo valor"
      ),
      maxLength: 10,
      validator: (value) {
        if(value!.length < 2) {
          return "Dgite um valor valido";
        }
        return null;
      },
    );
  }
  TextButton _rowButton() {
    return TextButton.icon(
      onPressed: (){
        _register();
        _resetFields();
      },
      icon: const Icon(Icons.add_circle),
      label: const Text('Calcullar'),
    );
  }
  Widget _rowUI() {
    return Column(
      children: [
        _rowIcon(),
        _rowNumber1(),
        _rowNumber2(),
        _rowButton()
      ],
    );
  }
  Form _rowForm() {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: _rowUI(),
    );
  }
  Widget _rowResult() {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text("Resultado Soma: $_calculateSum", style: const TextStyle(fontSize: 30),),
            Text("Resultado Sub: $_calculateSubtration", style: const TextStyle(fontSize: 30),),
            Text("Resultado Mult: $_calculateMultiplication", style: const TextStyle(fontSize: 30),),
            Text("Resultado Divisão: $_calculateDivision", style: const TextStyle(fontSize: 30),),
          ],
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _rowForm(),
              _rowResult()
            ],
          ),
        )
    );
  }

  @override
  void initState() {
    super.initState();

    _number1Controller = TextEditingController();
    _number2Controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    _number1Controller.dispose();
    _number2Controller.dispose();
  }

  _register() {
    debugPrint("Clicou no calcular");
    debugPrint("validou: ${_formKey.currentState!.validate()}");

    if(_formKey.currentState!.validate()) {
      debugPrint('Number1: $_number1Controller');
      debugPrint('Number2: $_number2Controller');

      final calculator = CalculatorModel(
          number1: _convertFromStringToDouble(_number1Controller.text),
          number2: _convertFromStringToDouble(_number2Controller.text)
      );
      debugPrint(calculator.toString());

      setState(() {
        _calculateSum = calculator.sumOfValues();
        _calculateSubtration = calculator.subtractionOfValues();
        _calculateDivision = calculator.divisionOfValues();
        _calculateMultiplication = calculator.multiplicationOfValues();
      });

      _sendMessage("Resultado: ${calculator.toString()}");
    } else {
      _sendMessage("Digite os campos corretamente");
    }

  }

  _sendMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  _convertFromStringToDouble(String value) => double.tryParse(value);

  _resetFields() => _formKey.currentState!.reset();
}