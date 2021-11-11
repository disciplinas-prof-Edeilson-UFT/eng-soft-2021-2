class Restaurante {
  final String nome;
  final String distancia;
  final String fotoLogo;
  final String notaAvaliacao;
  final String tipoComida;

  Restaurante(
      {required this.nome,
      required this.fotoLogo,
      required this.distancia,
      required this.notaAvaliacao,
      required this.tipoComida});

  factory Restaurante.fromFirestore(firestoreData) {
    // TODO
    return Restaurante(
        nome: '',
        distancia: '',
        fotoLogo: '',
        notaAvaliacao: '',
        tipoComida: '');
  }

  toFirestore() {
    // TODO
  }
}
