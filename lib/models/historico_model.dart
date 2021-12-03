class Historico {
  late int id;
  late String nome_loja;
  late int nota;
  late List<dynamic> itens;

  Historico.fromMap(Map<String, dynamic>map){

    id = map["id"];
    nome_loja = map["nome_loja"];
    nota = map["nota"];
    itens = map["itens"];

  }

}