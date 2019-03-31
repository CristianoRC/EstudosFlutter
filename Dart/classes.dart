import 'aluno.dart';

void main() {
  var cristiano = new Aluno("Cristiano", "Cunha", 20, "2018211...");
  printarAluno(cristiano);
  print("Idade usando getter: ${cristiano.Idade}");
  print("Override: ${cristiano.toString()}");
  try {
    print("------------------------\nSetando idade inválida");
    cristiano.Idade = -2;
  } catch (e) {
    print(e);
  }
}

void printarAluno(Aluno aluno) {
  print(
      "Dados: ${aluno.ObterNomeCompleto()}, ${aluno.Idade} anos, matrícula: ${aluno.Matricula}.");
}
