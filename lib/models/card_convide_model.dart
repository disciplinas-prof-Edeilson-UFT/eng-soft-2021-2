class CardCovideAmigos {
  final String imageConvideAmigos;
  final String codigoConvideAmigos;

  CardCovideAmigos(
      {required this.imageConvideAmigos, required this.codigoConvideAmigos});

  factory CardCovideAmigos.fromFirestore(firestoreData) {
    // TODO
    return CardCovideAmigos(codigoConvideAmigos: '', imageConvideAmigos: '');
  }

  toFirestore() {
    // TODO
  }
}
