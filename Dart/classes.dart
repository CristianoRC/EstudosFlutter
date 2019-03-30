import 'aluno.dart';

void main() {
  var cristiano = new Aluno("Cristiano", "Cunha", 20);
  printarAluno(cristiano);
  print("Idade usando getter: ${cristiano.Idade}");

  try {
    print("------------------------\nSetando idade inválida");
    cristiano.Idade = -2;
  } catch (e) {
    print(e);
  }
}

void printarAluno(Aluno aluno) {
  print("Nome completo: ${aluno.ObterNomeCompleto()}, ${aluno.Idade} anos.");
}
