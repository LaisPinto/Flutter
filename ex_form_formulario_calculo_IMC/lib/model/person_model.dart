import 'dart:math';


class PersonModel {
  String? name; // nome
  double? weight; //peso
  double? height;//altura

  PersonModel({this.name, this.weight, this.height});

  //calculo
  double calculateIMC() {
   // var imc = weight! / (height! * height!);
    var imc = weight! / pow(height!, 2); // melhor
    
    //debugPrint('IMC $imc');
    return imc;
  }

  @override
  String toString() {
    return 'PersonModel{name: $name, weight: $weight, height: $height, imc: ${calculateIMC()}';
  }
}