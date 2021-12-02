import 'package:flutter/material.dart';

class Categoria {
  final String nome;
  final Color cor;
  final String img_url;

  const Categoria(this.nome, this.cor, this.img_url);
}

class CategoriaModel {
  final List<Categoria> categoriaLista;

  const CategoriaModel(

      {this.categoriaLista = const [
        Categoria('', Colors.red,
            'https://cdn.discordapp.com/attachments/809775517493624852/910621459393699860/acai.jpg')
      ]});
}
