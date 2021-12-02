import 'models/mais_pedidos_por_vc_model.dart';
import 'models/peca_novamente_model.dart';
import 'models/banner_de_categoria_model.dart';
import 'models/card_da_categoria_componente_model.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class AppState {
  final int paginaAtual;
  final PecaNovamenteModel pecaNovamenteData;
  final CategoriaModel cardcategoriaData;
  final MaisPedidosModel maispedidosData;
  final BannerDeCategoriaModel bannerdecategoriaData;

  AppState(
      {this.paginaAtual = 0,
      this.pecaNovamenteData = const PecaNovamenteModel(
          'https://aguardando.fase.de.utilizar.o.storage/',
          [Produto('Pizza G Calabresa C/Borda Mista', 1)]),
      
      this.bannerdecategoriaData = const BannerDeCategoriaModel(),
      
      this.cardcategoriaData = const CategoriaModel([
        Categoria('Pizza', AppCores.vermelhoPrincipal,
            'https://cdn.discordapp.com/attachments/809775517493624852/910621459393699860/acai.jpg'),
        Categoria('Mercado', Color(0xffffffff),
            'https://cdn.discordapp.com/attachments/809775517493624852/910621463466344478/brasileira.jpg'),
        Categoria('Vale Alimentacao', Color(0xffA553BE),
            'https://cdn.discordapp.com/attachments/809775517493624852/910621464745623572/cafe.jpg'),
        Categoria('Sorvete', Color(0xffF8879B),
            'https://cdn.discordapp.com/attachments/809775517493624852/910621465857101824/doces.jpg'),
        Categoria('Hamburguer', Color(0xffA553BE),
            'https://cdn.discordapp.com/attachments/809775517493624852/910621467291570186/japones.jpg'),
        Categoria('Doces', Color(0xffF8879B),
            'https://cdn.discordapp.com/attachments/868118606448324638/910683119441547284/saudavel.jpg')
      ]),
      this.maispedidosData = const MaisPedidosModel([
        MaisPedidos('Bar do Diluc', 'Fechado',
            'https://cdn.discordapp.com/attachments/809775517493624852/910734117115674624/b3225dcdeebef9074c9c082afde8d495_2527226506439238336.png'),
        MaisPedidos('Noelle´s Pancakes', '',
            'https://cdn.discordapp.com/attachments/809775517493624852/910732173445832754/4ea27fde21b997bc3fb141786fc1719c_6363129461192613770.png'),
        MaisPedidos('Escudo Inquebrável', 'Fechado',
            'https://cdn.discordapp.com/attachments/809775517493624852/910740130833244160/show.png'),
        MaisPedidos('Presente dos Reis', 'Fechado',
            'https://media.discordapp.net/attachments/809775517493624852/910736507881553931/b891ddaf349a66bf1cdcccabec3c9a5b.png'),
        MaisPedidos('Vikings', '',
            'https://cdn.discordapp.com/attachments/809775517493624852/910736208626323497/22132_800x800.png')
      ])});
}
