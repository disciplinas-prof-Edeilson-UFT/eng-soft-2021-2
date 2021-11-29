class CategoriaBanner {
  final String nome;
  final String imgurl;
  const CategoriaBanner(this.nome,this.imgurl);
}

class BannerDeCategoriaModel {
  
  final List<CategoriaBanner> listacategoria;

  const BannerDeCategoriaModel( this.listacategoria);

  fromFirestore() {
    
  }

  toFirestore() {

  }
}
