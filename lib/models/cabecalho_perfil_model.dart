class CabecalhoPerfil {

  final String nome;
  final String fotoLogoCabecalhoPerfil;

  CabecalhoPerfil({required this.nome, required this.fotoLogoCabecalhoPerfil});


  factory CabecalhoPerfil.fromFirestore(firestoreData) {
    return CabecalhoPerfil(
      nome: '',
      fotoLogoCabecalhoPerfil: '',
    );
  }

  toFirestore() {
    // TODO
  }

}

