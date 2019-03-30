import 'dart:io';

void main() {
  List lista = new List();
  lista.add("Primeiro texto");

  stdout.write("Digite um texto: ");
  var novoTexto = stdin.readLineSync();
  lista.add(novoTexto);

  print("==============================");
  print(lista);
  print("==============================");

  Map usuario = {'nome': 'Cristiano', 'Github': '@CristianoRC'};
  print(usuario);
  print("Nome: ${usuario['nome']}");
  print("==============================");
}
