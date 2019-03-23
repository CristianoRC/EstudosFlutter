import 'dart:io';

void main() async {
  print("Olá Mundo!");

  stdout.write("Digite alguma coisa: ");
  var entrada = stdin.readLineSync();

  print("Entrada ${entrada}");
}
