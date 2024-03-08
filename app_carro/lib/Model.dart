class Carro {
  //atributos
  String _modelo;
  int _ano;
  String _imagemUrl;

  //construtor inicializando parametros
  Carro(this._modelo, this._ano, this._imagemUrl);

  //metodos modificadores de acesso

  //getters
  String get modelo => _modelo;
  int get ano => _ano;
  String get imagemUrl => _imagemUrl;



  //setters
  set modelo(String novoModelo) {
    if (novoModelo.isNotEmpty) {
      _modelo = novoModelo;
    }
  }

  set ano(int novoAno) {
    if (novoAno >= 1900) {
      _ano = novoAno;
    }
  }
}
