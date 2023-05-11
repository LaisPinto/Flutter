import 'package:flutter/material.dart';

import '../model/_export_models.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //variaveis
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController ;
  late TextEditingController _weightController ;
  late TextEditingController _heightController ;
 

  double _imc = 0.0;

  //widgets - mudarão de local conforme conhecimento adquirendo

  Icon _rowIcon() {
    return const Icon(Icons.people, size: 100,);
  }
  TextFormField _rowName() {
    return TextFormField(
      controller: _nameController,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
          hintText: "Digite seu nome"
      ),
      maxLength: 50,
      validator: (value) {
        if(value!.isEmpty) {
          return "Dgite um valor valido";
        }
        return null;
      },
    );
  }
  TextFormField _rowWeight() {
    return TextFormField(
      controller: _weightController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          hintText: "Digite seu peso"
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
  TextFormField _rowheight() {
    return TextFormField(
      controller: _heightController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          hintText: "Digite sua altura"
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
  TextButton rowButton() {
    return TextButton.icon(
      onPressed: (){
        _register();
        _resetFields();
      },
      icon: const Icon(Icons.add_circle),
      label: const Text('Calcullar IMC'),
    );
  }
  Widget _rowUI() {
    return Column(
      children:  [
        _rowIcon(),
        _rowName(),
        _rowWeight(),
        _rowheight(),
        rowButton()
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
        child: Text("IMC: $_imc", style: const TextStyle(fontSize: 30),)
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
        ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _nameController = TextEditingController();
    _weightController = TextEditingController();
    _heightController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _nameController.dispose();
    _weightController.dispose();
    _heightController.dispose();
  }

  //regras de negocio

  _register() {
    print('clicou no calcular IMC');
    print("validou:  ${_formKey.currentState!.validate()}");

    if(_formKey.currentState!.validate()) {
      //validou, podemos pegar os valores dos controllers
      print('name: ${_nameController.text}');
      print('weight: ${_weightController.text}');
      print('height: ${_heightController.text}');

      //conversões....
      // double? weight = double.tryParse(_weightController.text);
      // double? height= double.tryParse(_heightController.text);

      final person = PersonModel(
          name: _nameController.text,
          weight: _convertFromStringToDouble(_weightController.text),
          height: _convertFromStringToDouble(_heightController.text)
      );
      debugPrint(person.toString());

      setState(() {
        _imc = person.calculateIMC();
      });

      _sendMessage("Resultado:\n${person.toString()}");
    } else {
      //não validou, envia erro para o usuario
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