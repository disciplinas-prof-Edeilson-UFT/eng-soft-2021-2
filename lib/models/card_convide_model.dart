class CardCovideAmigos {
<<<<<<< HEAD
  final String img_url;
  final String codigo_convide;

  CardCovideAmigos({required this.img_url, required this.codigo_convide});

  factory CardCovideAmigos.fromFirestore(firestoreData) {
    // TODO
    return CardCovideAmigos(codigo_convide: '', img_url: '');
=======
  final String imageConvideAmigos;
  final String codigoConvideAmigos;

  CardCovideAmigos(
      {required this.imageConvideAmigos, required this.codigoConvideAmigos});

  factory CardCovideAmigos.fromFirestore(firestoreData) {
    // TODO
    return CardCovideAmigos(codigoConvideAmigos: '', imageConvideAmigos: '');
>>>>>>> 7ee480e (page covide amigos e model)
  }

  toFirestore() {
    // TODO
  }
}
