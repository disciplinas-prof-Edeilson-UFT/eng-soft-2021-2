import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';
import 'models/ultimas_lojas_model.dart';

import 'models/banner_de_categoria_model.dart';
import 'models/card_da_categoria_componente_model.dart';
import 'models/mais_pedidos_por_vc_model.dart';
import 'models/peca_novamente_model.dart';
import 'models/abas_inferiores_model.dart';

class AppState {
  final int paginaAtual;
  final PecaNovamenteModel pecaNovamenteData;
  final CategoriaModel cardcategoriaData;
  final MaisPedidosModel maispedidosData;
  final UltimasLojasModel ultimaslojasData;
  final BannerDeCategoriaModel bannerdecategoriaData;
  final AbasInferioresModel abasinferioresData;

  AppState({
    this.paginaAtual = 0,
    this.pecaNovamenteData = const PecaNovamenteModel(),
    this.bannerdecategoriaData = const BannerDeCategoriaModel([
      CategoriaBanner('Salgados',
          'https://cdn.discordapp.com/attachments/814528592419094570/912145821808599060/salgados1.jpg'),
      CategoriaBanner('Lanches',
          'https://cdn.discordapp.com/attachments/814528592419094570/912145821292716062/lanches1.jpg'),
      CategoriaBanner('Carnes',
          'https://cdn.discordapp.com/attachments/814528592419094570/912145821049438238/carnes1.jpg'),
      CategoriaBanner('Pizza',
          'https://cdn.discordapp.com/attachments/814528592419094570/912145821565341736/pizza1.jpg'),
      CategoriaBanner('Japonesa',
          'https://cdn.discordapp.com/attachments/814528592419094570/912154611559858266/19C1-japonesa.png'),
      CategoriaBanner('Açaí',
          'https://cdn.discordapp.com/attachments/814528592419094570/912154798323793930/19C1-acai.png'),
      CategoriaBanner('Bebidas',
          'https://cdn.discordapp.com/attachments/814528592419094570/912191740105089054/19C1-bebidas.png'),
      CategoriaBanner('Saudável',
          'https://cdn.discordapp.com/attachments/814528592419094570/912191814440742992/19C1-saudavel-v2.png'),
      CategoriaBanner('Brasileira',
          'https://cdn.discordapp.com/attachments/814528592419094570/912191878458380308/19C1-brasileira-v2.png'),
      CategoriaBanner('Cozinha Rápida',
          'https://cdn.discordapp.com/attachments/814528592419094570/912191949136605184/19C1-comida-rapida.png'),
    ]),
    this.cardcategoriaData = const CategoriaModel(),
    this.maispedidosData = const MaisPedidosModel(),
    this.ultimaslojasData = const UltimasLojasModel([
      Lojas("McDonald's", 'https://i.imgur.com/L8VcJbD.png'),
      Lojas('Burger King', 'https://i.imgur.com/BhBX8HH.png'),
      Lojas('Giraffas', 'https://i.imgur.com/0I9W33L.png'),
      Lojas('Subway', 'https://i.imgur.com/rYyDTK6.png'),
    ]),
    this.abasinferioresData = const AbasInferioresModel([
      Abas("Ajuda", 'https://imgur.com/NgRmdFM.png'),
      Abas("Configurações", 'https://imgur.com/TseB9Qd.png'),
      Abas("Segurança", 'https://imgur.com/bb3Vz0Y.png'),
      Abas("Usar no carro", 'https://imgur.com/yK7SRwg.png'),
      Abas("Sugerir restaurantes", 'https://imgur.com/n9yeTcC.png'),
    ]),
  });
}
