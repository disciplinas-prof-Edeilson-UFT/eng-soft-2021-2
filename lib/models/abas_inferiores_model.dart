class Abas {
  final String nome;
  final String icon;

  const Abas(this.nome, this.icon);
}

class AbasInferioresModel {
  final List<Abas> listadasabas;

  const AbasInferioresModel(this.listadasabas);

  fromFirestore(){
    // TODO
  }

  toFirestore(){
    //TODO
  }
}