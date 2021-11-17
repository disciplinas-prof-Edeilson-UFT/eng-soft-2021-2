import 'package:ifood_engenharia_de_software/models/card_da_categoria_componente_model.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';


class AlterarCard {

  final List<Categoria> categoriaLista;

  AlterarCard(this.categoriaLista);

  CategoriaModel cardcategoriaData = const CategoriaModel([


    Categoria('Pizza', AppCores.vermelhoPrincipal, 'https://aguardando.fase.de.utilizar.o.storage/'),
    Categoria('Mercado', Color(0xffb5cf47), 'https://aguardando.fase.de.utilizar.o.storage/'),
    Categoria('Vale Alimentacao', Color(0xffA553BE), 'https://aguardando.fase.de.utilizar.o.storage/'),
    Categoria('Sorvete', Color(0xffF8879B), 'https://aguardando.fase.de.utilizar.o.storage/'),
    Categoria('Hamburguer', Color(0xffA553BE), 'https://aguardando.fase.de.utilizar.o.storage/'),
    Categoria('Doces', Color(0xffF8879B), 'https://aguardando.fase.de.utilizar.o.storage/')

    ]
  );
}