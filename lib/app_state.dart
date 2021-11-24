import 'models/peca_novamente_model.dart';

import 'models/banner_de_categoria_model.dart';

import 'models/card_da_categoria_componente_model.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';
import 'models/ultimas_lojas_model.dart';


class AppState {
  final int paginaAtual;
  final PecaNovamenteModel pecaNovamenteData;
  final CategoriaModel cardcategoriaData;
  final UltimasLojasModel ultimaslojasData;
  final BannerDeCategoriaModel bannerdecategoriaData;
 
  
  AppState(
      {this.paginaAtual = 0,
      this.pecaNovamenteData = const PecaNovamenteModel(
          'https://aguardando.fase.de.utilizar.o.storage/',
          [Produto('Pizza G Calabresa C/Borda Mista', 1)]),

      
      this.bannerdecategoriaData = const BannerDeCategoriaModel( 
        [CategoriaBanner('Salgados','https://cdn.discordapp.com/attachments/814528592419094570/912145821808599060/salgados1.jpg'),
         CategoriaBanner('Lanches','https://cdn.discordapp.com/attachments/814528592419094570/912145821292716062/lanches1.jpg'),
         CategoriaBanner('Carnes','https://cdn.discordapp.com/attachments/814528592419094570/912145821049438238/carnes1.jpg'),
         CategoriaBanner('Pizza','https://cdn.discordapp.com/attachments/814528592419094570/912145821565341736/pizza1.jpg'),
         CategoriaBanner('Japonesa','https://cdn.discordapp.com/attachments/814528592419094570/912154611559858266/19C1-japonesa.png'),
         CategoriaBanner('Açaí','https://cdn.discordapp.com/attachments/814528592419094570/912154798323793930/19C1-acai.png'),
         CategoriaBanner('Bebidas','https://cdn.discordapp.com/attachments/814528592419094570/912191740105089054/19C1-bebidas.png'),
         CategoriaBanner('Saudável','https://cdn.discordapp.com/attachments/814528592419094570/912191814440742992/19C1-saudavel-v2.png'),
         CategoriaBanner('Brasileira','https://cdn.discordapp.com/attachments/814528592419094570/912191878458380308/19C1-brasileira-v2.png'),
         CategoriaBanner('Cozinha Rápida','https://cdn.discordapp.com/attachments/814528592419094570/912191949136605184/19C1-comida-rapida.png'),
         ]),

        this.cardcategoriaData = const CategoriaModel([

          Categoria('Pizza', AppCores.vermelhoPrincipal, 'https://cdn.discordapp.com/attachments/809775517493624852/910621459393699860/acai.jpg'),
          Categoria('Mercado', Color(0xffffffff), 'https://cdn.discordapp.com/attachments/809775517493624852/910621463466344478/brasileira.jpg'),
          Categoria('Vale Alimentacao', Color(0xffA553BE), 'https://cdn.discordapp.com/attachments/809775517493624852/910621464745623572/cafe.jpg'),
          Categoria('Sorvete', Color(0xffF8879B), 'https://cdn.discordapp.com/attachments/809775517493624852/910621465857101824/doces.jpg'),
          Categoria('Hamburguer', Color(0xffA553BE), 'https://cdn.discordapp.com/attachments/809775517493624852/910621467291570186/japones.jpg'),
          Categoria('Doces', Color(0xffF8879B), 'https://cdn.discordapp.com/attachments/868118606448324638/910683119441547284/saudavel.jpg')
        ]),
        this.ultimaslojasData = const UltimasLojasModel(
      [
      Lojas("McDonald's",'https://i.imgur.com/L8VcJbD.png'),
      Lojas('Burger King','https://i.imgur.com/BhBX8HH.png'),
      Lojas('Giraffas','https://i.imgur.com/0I9W33L.png'),
      Lojas('Subway','https://i.imgur.com/rYyDTK6.png'),
      ]),
  });
  
}
