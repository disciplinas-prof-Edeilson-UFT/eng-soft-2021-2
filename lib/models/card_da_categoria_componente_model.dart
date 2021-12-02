import 'package:flutter/material.dart';

class Categoria {
  final String nome;
  final Color cor;
  final String img_url;

  const Categoria(this.nome, this.cor, this.img_url);
}

class CategoriaModel {
  final List<Categoria> categoriaLista;

  const CategoriaModel(this.categoriaLista);

  fromFirestore() {
    // TODO
  }

  toFirestore() {
    // TODO
  }
}
