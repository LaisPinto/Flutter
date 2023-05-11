import 'package:ex2_distancia/model/distance_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _numberx1Controller;
  late TextEditingController _numbery1Controller;
  late TextEditingController _numberx2Controller;
  late TextEditingController _numbery2Controller;

  double _calculate = 0.0;

  Icon _rowIcon() {
    return const Icon(Icons.calculate, size: 100,);
  }
  TextFormField _rowNumberx1() {
    return TextFormField(
      controller: _numberx1Controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          hintText: "Digite o primeiro x1 valor"
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
  TextFormField _rowNumbery1() {
    return TextFormField(
      controller: _numbery1Controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          hintText: "Digite o primeiro y1 valor"
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
  TextFormField _rowNumberx2() {
    return TextFormField(
      controller: _numberx2Controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          hintText: "Digite o segundo x2 valor"
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
  TextFormField _rowNumbery2() {
    return TextFormField(
      controller: _numbery2Controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          hintText: "Digite o segundo y2 valor"
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
        _rowNumberx1(),
        _rowNumbery1(),
        _rowNumberx2(),
        _rowNumbery2(),
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
      child: Text("Resultado: $_calculate", style: const TextStyle(fontSize: 30),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body:SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _rowForm(),
                _rowResult()
              ],
            ),
          ),
        )
    );
  }

  @override
  void initState() {
    super.initState();

    _numberx1Controller = TextEditingController();
    _numbery1Controller = TextEditingController();
    _numberx2Controller = TextEditingController();
    _numbery2Controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    _numberx1Controller.dispose();
    _numberx2Controller.dispose();
    _numbery1Controller.dispose();
    _numbery2Controller.dispose();
  }

  _register() {
    debugPrint("Clicou no calcular");
    debugPrint("validou: ${_formKey.currentState!.validate()}");

    if(_formKey.currentState!.validate()) {
      debugPrint("x1: $_numberx1Controller");
      debugPrint("x2: $_numberx2Controller");
      debugPrint("y1: $_numbery1Controller");
      debugPrint("y2: $_numbery2Controller");

      final calculator = DistanceModel(
        x1: _convertFromStringToDouble(_numberx1Controller.text),
        x2: _convertFromStringToDouble(_numberx2Controller.text),
        y1: _convertFromStringToDouble(_numbery1Controller.text),
        y2: _convertFromStringToDouble(_numbery2Controller.text),
      );
      debugPrint(calculator.toString());

      setState(() {
        _calculate = calculator.distance();
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


