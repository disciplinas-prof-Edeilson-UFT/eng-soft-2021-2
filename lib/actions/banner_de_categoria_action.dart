import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';
import 'package:ifood_engenharia_de_software/components/busca/banner_de_categoria_componente.dart';
import 'package:ifood_engenharia_de_software/models/banner_de_categoria_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../app_store.dart';

class AlterarBannerDeCategoria {
  FirebaseFirestore bdc = FirebaseFirestore.instance;

  final BannerDeCategoriaModel bannerdecategoriaData;

  AlterarBannerDeCategoria(
      {this.bannerdecategoriaData = const BannerDeCategoriaModel()});

  void atualizaModel() {
    bdc
        .collection('bannerdecategoria')
        .get()
        .then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        BannerDeCategoriaModel bannerdecategoriaData = BannerDeCategoriaModel(
            listacategoria: [CategoriaBanner(doc.get('nome'), doc['imgurl'])]);
        appStore.dispatcher(AlterarBannerDeCategoria(
            bannerdecategoriaData: bannerdecategoriaData));
      }

      /*   */
    });

    /* .get()
        .then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        print(doc["first_name"]);
      }
      /* BannerDeCategoriaModel bannerdecategoriaData =
            BannerDeCategoriaModel(nome: querySnapshot.data()['nome'], imgurl: item['imgurl']);
        appStore.dispatcher(AlterarBannerDeCategoria(
            bannerdecategoriaData: bannerdecategoriaData)); */
      //});
    }); */
  }
}
