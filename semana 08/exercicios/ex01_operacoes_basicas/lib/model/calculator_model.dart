class CalculatorModel {
  double number1;
  double number2;

  CalculatorModel({required this.number1, required this.number2});

  double sumOfValues() {
    var sun = number1 + number2;
    return sun;
  }

  double subtractionOfValues() {
    var subtraction = number1 - number2;
    return subtraction;
  }

  double divisionOfValues() {
    var  division = number1 / number2;
    return division;
  }

  double multiplicationOfValues() {
    var multiplication = number1 * number2;
    return multiplication;
  }

  @override
  String toString() {
    return 'Valor 1: $number1, Valor 2: $number2 '
        'Soma: ${sumOfValues()} Subtração: ${subtractionOfValues()} '
        'Divisão: ${divisionOfValues()} Multiplicação: ${multiplicationOfValues()}';
  }
}