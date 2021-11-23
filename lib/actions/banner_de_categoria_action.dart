import 'package:ifood_engenharia_de_software/models/banner_de_categoria_model.dart';

class AlterarBannerDeCategoria {
 
  final List<CategoriaBanner> listacategoria;

  AlterarBannerDeCategoria( this.listacategoria);

  BannerDeCategoriaModel bannerdecategoriaData = const BannerDeCategoriaModel(
      [  CategoriaBanner('Salgados','https://cdn.discordapp.com/attachments/814528592419094570/912145821808599060/salgados1.jpg'),
         CategoriaBanner('Lanches','https://cdn.discordapp.com/attachments/814528592419094570/912145821292716062/lanches1.jpg'),
         CategoriaBanner('Carnes','https://cdn.discordapp.com/attachments/814528592419094570/912145821049438238/carnes1.jpg'),
         CategoriaBanner('Pizza','https://cdn.discordapp.com/attachments/814528592419094570/912145821565341736/pizza1.jpg'),
         CategoriaBanner('Japonesa','https://cdn.discordapp.com/attachments/814528592419094570/912154611559858266/19C1-japonesa.png'),
         CategoriaBanner('Açaí','https://cdn.discordapp.com/attachments/814528592419094570/912154798323793930/19C1-acai.png'), 
         CategoriaBanner('Bebidas','https://cdn.discordapp.com/attachments/814528592419094570/912191740105089054/19C1-bebidas.png'),
         CategoriaBanner('Saudável','https://cdn.discordapp.com/attachments/814528592419094570/912191814440742992/19C1-saudavel-v2.png'),
         CategoriaBanner('Brasileira','https://cdn.discordapp.com/attachments/814528592419094570/912191878458380308/19C1-brasileira-v2.png'),
         CategoriaBanner('Cozinha Rápida','https://cdn.discordapp.com/attachments/814528592419094570/912191949136605184/19C1-comida-rapida.png')
      ]);
}
