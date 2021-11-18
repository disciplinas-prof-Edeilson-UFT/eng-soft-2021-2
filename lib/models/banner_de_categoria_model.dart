class CategoriaBanner {
  final String nome;
  
  const CategoriaBanner(this.nome);
}

class BannerDeCategoriaModel {
  
  final List<CategoriaBanner> listacategoria;

  const BannerDeCategoriaModel( this.listacategoria);

  fromFirestore() {
    
  }

  toFirestore() {

  }
}
