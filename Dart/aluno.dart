class Aluno {
  String _nome;
  String _sobrenome;
  int _idade;

  Aluno(String nome, String sobrenome, int idade) {
    _nome = nome;
    _sobrenome = sobrenome;
    _idade = idade;
  }

  void set Idade(int idade) {
    if (idade < 0) throw new ArgumentError("Idade inválida!");
    _idade = idade;
  }

  int get Idade => _idade;

  void set Nome(String nome) {
    _nome = nome;
  }

  String get Nome => _nome;

  void set Sobrenome(String sobrenome) {
    _sobrenome = sobrenome;
  }

  String get Sobrenome => _sobrenome;

  String ObterNomeCompleto() {
    return "${_nome} ${_sobrenome}";
  }
}
