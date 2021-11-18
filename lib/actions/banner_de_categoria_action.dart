import 'package:ifood_engenharia_de_software/models/banner_de_categoria_model.dart';

class AlterarBannerDeCategoria {
  final List<CategoriaBanner> listacategoria;

  AlterarBannerDeCategoria(this.listacategoria);

  BannerDeCategoriaModel bannerdecategoriaData = const BannerDeCategoriaModel([
    CategoriaBanner('Express'),
    CategoriaBanner('Mercado'),
    CategoriaBanner('Farmácia'),
    CategoriaBanner('Bebidas'),
    CategoriaBanner('Pizza'),
    CategoriaBanner('Lanches')
  ]);
}
