import 'models/peca_novamente_model.dart';
import 'models/card_da_categoria_componente_model.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class AppState {
  final int paginaAtual;
  final PecaNovamenteModel pecaNovamenteData;
  final CategoriaModel cardcategoriaData;

  AppState(
      {this.paginaAtual = 0,
      this.pecaNovamenteData = const PecaNovamenteModel(
          'https://aguardando.fase.de.utilizar.o.storage/',
          [Produto('Pizza G Calabresa C/Borda Mista', 1)]),
      this.cardcategoriaData = const CategoriaModel ([

  Categoria('Pizza', AppCores.vermelhoPrincipal, 'https://media.discordapp.net/attachments/809775517493624852/910621463466344478/brasileira.jpg'),
  Categoria('Mercado', Color(0xffb5cf47), 'https://aguardando.fase.de.utilizar.o.storage/'),
  Categoria('Vale Alimentacao', Color(0xffA553BE), 'https://aguardando.fase.de.utilizar.o.storage/'),
  Categoria('Sorvete', Color(0xffF8879B), 'https://aguardando.fase.de.utilizar.o.storage/'),
  Categoria('Hamburguer', Color(0xffA553BE), 'https://aguardando.fase.de.utilizar.o.storage/'),
  Categoria('Doces', Color(0xffF8879B), 'https://aguardando.fase.de.utilizar.o.storage/')


  ])});
  
}
