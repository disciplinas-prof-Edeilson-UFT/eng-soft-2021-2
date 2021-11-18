import 'models/peca_novamente_model.dart';
import 'models/banner_de_categoria_model.dart';
class AppState {
  final int paginaAtual;
  final PecaNovamenteModel pecaNovamenteData;

  final BannerDeCategoriaModel bannerdecategoriaData;
 
  
  AppState(
      {this.paginaAtual = 0,
      this.pecaNovamenteData = const PecaNovamenteModel(
          'https://aguardando.fase.de.utilizar.o.storage/',
          [Produto('Pizza G Calabresa C/Borda Mista', 1)]),
      
      this.bannerdecategoriaData = const BannerDeCategoriaModel( 
        [CategoriaBanner('express'),
         CategoriaBanner('Mercado'),
         CategoriaBanner('Farmácia'),
         CategoriaBanner('Bebidas'),
         CategoriaBanner('Pizza'),
         CategoriaBanner('Lanches')])
      }
   );
}
