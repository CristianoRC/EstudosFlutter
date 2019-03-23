import 'dart:io';

void main() {
  stdout.write("Digite O primeiro numero: ");
  var firstNumber = stdin.readLineSync();
  printSeparator();

  stdout.write("Digite o segundo numero: ");
  var secondNumber = stdin.readLineSync();
  printSeparator();

  stdout.write("Digite uma operação (+, -, *, /): ");
  var operator = stdin.readLineSync();
  printSeparator();

  try {
    var calcResult = calculate(firstNumber, secondNumber, operator);
    print("Resultado: $calcResult");
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}

double calculate(var numberOne, var numberTwo, var operation) {
  var numberOneConverted = double.parse(numberOne.replaceAll(',', '.').trim());
  var numberTwoConverted = double.parse(numberTwo.replaceAll(',', '.').trim());

  switch (operation.trim()) {
    case '+':
      return numberOneConverted + numberTwoConverted;
    case '-':
      return numberOneConverted - numberTwoConverted;
    case '*':
      return numberOneConverted * numberTwoConverted;
    case '/':
      return numberOneConverted / numberTwoConverted;
    default:
      throw ("Operação inválida!");
  }
}

void printSeparator() {
  print("=====================================");
}
