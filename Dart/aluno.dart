import 'pessoa.dart';

class Aluno extends Pessoa {
  Aluno(String nome, String sobrenome, int idade, String matricula)
      : super(nome, sobrenome, idade) {
    Matricula = matricula;
  }

  String _matricula;

  void set Matricula(String matricula) {
    this._matricula = matricula;
  }

  String get Matricula => _matricula;

  @override
  String toString() {
    return "Override! \\o/";
  }
}
