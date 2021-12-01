class CardCovideAmigos {
<<<<<<< HEAD
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
=======
  final String img_url;
  final String codigo_convide;
>>>>>>> 2b26370 (R3/T4 - Card convide seus amigos complemento + Model)

  CardCovideAmigos({required this.img_url, required this.codigo_convide});

  factory CardCovideAmigos.fromFirestore(firestoreData) {
    // TODO
<<<<<<< HEAD
    return CardCovideAmigos(codigoConvideAmigos: '', imageConvideAmigos: '');
>>>>>>> 7ee480e (page covide amigos e model)
=======
    return CardCovideAmigos(codigo_convide: '', img_url: '');
>>>>>>> 2b26370 (R3/T4 - Card convide seus amigos complemento + Model)
  }

  toFirestore() {
    // TODO
  }
}
