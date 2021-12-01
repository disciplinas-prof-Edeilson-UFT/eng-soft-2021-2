import 'models/peca_novamente_model.dart';

import 'models/banner_de_categoria_model.dart';

import 'models/abas_inferiores_model.dart';

import 'models/card_da_categoria_componente_model.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';



class AppState {
  final int paginaAtual;
  final PecaNovamenteModel pecaNovamenteData;
  final CategoriaModel cardcategoriaData;
  final AbasInferioresModel abasinferioresData;

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
         CategoriaBanner('Lanches')]),

        this.cardcategoriaData = const CategoriaModel([

          Categoria('Pizza', AppCores.vermelhoPrincipal, 'https://cdn.discordapp.com/attachments/809775517493624852/910621459393699860/acai.jpg'),
          Categoria('Mercado', Color(0xffffffff), 'https://cdn.discordapp.com/attachments/809775517493624852/910621463466344478/brasileira.jpg'),
          Categoria('Vale Alimentacao', Color(0xffA553BE), 'https://cdn.discordapp.com/attachments/809775517493624852/910621464745623572/cafe.jpg'),
          Categoria('Sorvete', Color(0xffF8879B), 'https://cdn.discordapp.com/attachments/809775517493624852/910621465857101824/doces.jpg'),
          Categoria('Hamburguer', Color(0xffA553BE), 'https://cdn.discordapp.com/attachments/809775517493624852/910621467291570186/japones.jpg'),
          Categoria('Doces', Color(0xffF8879B), 'https://cdn.discordapp.com/attachments/868118606448324638/910683119441547284/saudavel.jpg')

      ]),
      this.abasinferioresData = const AbasInferioresModel([
        Abas("Ajuda",'https://imgur.com/NgRmdFM.png'),
        Abas("Configurações",'https://imgur.com/TseB9Qd.png'),
        Abas("Segurança",'https://imgur.com/bb3Vz0Y.png'),
        Abas("Usar no carro",'https://imgur.com/yK7SRwg.png'),
        Abas("Sugerir restaurantes",'https://imgur.com/n9yeTcC.png'),
      ]),
    });


  
}
