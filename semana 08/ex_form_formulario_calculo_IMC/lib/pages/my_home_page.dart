import 'package:ex_form_formulario_calculo_imc/model/person_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //variaveis
  final GlobalKey _formKey = GlobalKey();
  late TextEditingController _nameController ;
  late TextEditingController _weightController ;
  late TextEditingController _heightController ;


  double _imc = 0.0;

  //widgets - mudarão de local conforme conhecimento adquirendo

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
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children:  [
                    const Icon(Icons.people, size: 100,),
                    TextFormField(
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
                    ),
                    TextFormField(
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
                    ),
                    TextFormField(
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
                    ),
                    TextButton.icon(
                        onPressed: () => _register(),
                        icon: const Icon(Icons.add_circle),
                        label: const Text('Calcullar IMC'),
                    )
                  ],
                ),
              )
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

    final person = PersonModel(name: 'lais', weight: 70, height: 1.65);
    debugPrint(person.toString());
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
   // _resetFields();
  }
  //_resetFields() => _formKey.currentState!;
}