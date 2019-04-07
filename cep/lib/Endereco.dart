class Endereco {
  var _cep = "";
  var _logradouro = "";
  var _localidade = "";
  var _bairro = "";
  var _uf = "";
  var _ibge = "";
  var _unidade = "";
  var _guia = "";

  get cep => _cep;

  set cep(cep) {
    _cep = cep;
  }

  get logradouro => _logradouro;

  set logradouro(logradouro) {
    _logradouro = logradouro;
  }

  get bairro => _bairro;

  set bairro(bairro) {
    _bairro = bairro;
  }

  get localidade => _localidade;

  set localidade(localidade) {
    _localidade = localidade;
  }

  get uf => _uf;

  set uf(uf) {
    _uf = uf;
  }

  get unidade => _unidade;

  set unidade(unidade) {
    _unidade = unidade;
  }

  get ibge => _ibge;

  set ibge(ibge) {
    _ibge = ibge;
  }

  get guia => _guia;

  set guia(guia) {
    _guia = guia;
  }
}
