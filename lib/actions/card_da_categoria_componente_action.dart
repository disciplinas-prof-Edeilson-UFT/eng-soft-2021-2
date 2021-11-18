import 'package:ifood_engenharia_de_software/models/card_da_categoria_componente_model.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';


class AlterarCard {

  final List<Categoria> categoriaLista;

  AlterarCard(this.categoriaLista);

  CategoriaModel cardcategoriaData = const CategoriaModel([


    Categoria('Pizza', AppCores.vermelhoPrincipal, 'https://cdn.discordapp.com/attachments/809775517493624852/910621459393699860/acai.jpg'),
    Categoria('Mercado', Color(0xffffffff), 'https://cdn.discordapp.com/attachments/809775517493624852/910621463466344478/brasileira.jpg'),
    Categoria('Vale Alimentacao', Color(0xffA553BE), 'https://cdn.discordapp.com/attachments/809775517493624852/910621464745623572/cafe.jpg'),
    Categoria('Sorvete', Color(0xffF8879B), 'https://cdn.discordapp.com/attachments/809775517493624852/910621465857101824/doces.jpg'),
    Categoria('Hamburguer', Color(0xffA553BE), 'https://cdn.discordapp.com/attachments/809775517493624852/910621467291570186/japones.jpg'),
    Categoria('Doces', Color(0xffF8879B), 'https://cdn.discordapp.com/attachments/868118606448324638/910683119441547284/saudavel.jpg')

    ]
  );
}