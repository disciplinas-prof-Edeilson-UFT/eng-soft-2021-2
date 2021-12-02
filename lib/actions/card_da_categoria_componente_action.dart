import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/models/card_da_categoria_componente_model.dart';

import '../app_store.dart';

class AlterarCard {
  final CategoriaModel cardcategoriaData;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  AlterarCard({this.cardcategoriaData = const CategoriaModel()});

  List<Categoria> categoriaLista = [];

  void atualizar()
  {
    FirebaseFirestore.instance
        .collection('categorias')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        categoriaLista.add(Categoria(doc['nome'], Colors.red, doc['img_url']));
      });
      appStore.dispatcher(AlterarCard(
          cardcategoriaData: CategoriaModel(categoriaLista: categoriaLista)));
    }
    );
  }
}
