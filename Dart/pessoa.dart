class Pessoa {
  Pessoa(String nome, String sobrenome, int idade) {
    Nome = nome;
    Sobrenome = sobrenome;
    Idade = idade;
  }

  String _nome, _sobrenome;
  int _idade;

  void set Nome(String nome) {
    this._nome = nome;
  }

  String get Nome => _nome;

  void set Sobrenome(String sobrenome) {
    this._sobrenome = sobrenome;
  }

  void set Idade(int idade) {
    if (idade < 0)
      throw new ArgumentError(
          "Idade inválida, o valor deve ser maior que zero.");

    this._idade = idade;
  }

  int get Idade => _idade;

  String ObterNomeCompleto() {
    return "${_nome} ${_sobrenome}";
  }
}
