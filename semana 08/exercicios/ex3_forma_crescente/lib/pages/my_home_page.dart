import 'package:flutter/material.dart';

import '../model/calculator_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _aController;
  late TextEditingController _bController;
  late TextEditingController _cController;

  String _display = '0.0';

  Icon _rowIcon() {
    return const Icon(Icons.calculate, size: 100,);
  }
  TextFormField _rowValueA() {
    return TextFormField(
      controller: _aController,
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
  TextFormField _rowValueB() {
    return TextFormField(
      controller: _bController,
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
  TextFormField _rowValueC() {
    return TextFormField(
      controller: _cController,
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
  TextButton _rowButton() {
    return TextButton.icon(
      onPressed: (){
        _register();
        _resetFields();
      },
      icon: const Icon(Icons.add_circle),
      label: const Text('Mostrar'),
    );
  }
  Widget _rowUI() {
    return Column(
      children: [
        _rowIcon(),
        _rowValueA(),
        _rowValueB(),
        _rowValueC(),
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
      child: Text("Resultado: $_display", style: const TextStyle(fontSize: 30),),
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
    _aController = TextEditingController();
    _bController = TextEditingController();
    _cController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _aController.dispose();
    _bController.dispose();
    _cController.dispose();
  }

  _register() {
    debugPrint("Clicou no mostrar");
    debugPrint("validou: ${_formKey.currentState!.validate()}");

    if(_formKey.currentState!.validate()) {
      debugPrint("A: $_aController");
      debugPrint("B: $_bController");
      debugPrint("C: $_cController");

      final calculate = OrdinationModel(
          a: _convertFromStringToDouble(_aController.text),
          b: _convertFromStringToDouble(_bController.text),
          c: _convertFromStringToDouble(_cController.text)
      );
      debugPrint(calculate.toString());

      setState(() {
        // calculate.orderByCrescent()!
        _display = calculate.orderByCrescent()!;
      });

      _sendMessage("Resultado: ${calculate.toString()}");
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