import 'package:app_carro/Model.dart';

class CarroControler {
  List<Carro> _carroslista = [
    Carro("Fiat Uno", 2002, "https://"),
    Carro("Classic", 2005, ""),
  ];

  List<Carro> get listarCarros => _carroslista;

  void adicionarCarro(String modelo, int ano, String imagemUrl) {
    //criei um obj da classe Carro
    Carro carro = Carro(modelo, ano, imagemUrl);
    //adicionando o novo carro a lista de carros
    _carroslista.add(carro);
  }
}
