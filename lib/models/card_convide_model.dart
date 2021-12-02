class CardCovideAmigos {
  final String img_url;
  final String codigo_convide;

  CardCovideAmigos({required this.img_url, required this.codigo_convide});

  factory CardCovideAmigos.fromFirestore(firestoreData) {
    // TODO
    return CardCovideAmigos(codigo_convide: '', img_url: '');
  }

  toFirestore() {
    // TODO
  }
}
