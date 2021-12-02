
import 'package:flutter/cupertino.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';
import 'package:ifood_engenharia_de_software/models/banner_de_categoria_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../app_store.dart';

class AlterarBannerDeCategoria {
  FirebaseFirestore bdc = FirebaseFirestore.instance;
  final BannerDeCategoriaModel bannerdecategoriaData;

  AlterarBannerDeCategoria(
      {this.bannerdecategoriaData = const BannerDeCategoriaModel()});

  List<CategoriaBanner> listacategoria = [];
  void atualizaModel() {
    bdc
        .collection('bannerdecategoria')
        .get()
        .then((QuerySnapshot querySnapshot) {
          querySnapshot.docs.forEach((doc) {
            listacategoria.add(CategoriaBanner(doc['nome'], doc['imgurl'])
            );
          }); 
          appStore.dispatcher(AlterarBannerDeCategoria(bannerdecategoriaData: BannerDeCategoriaModel(listacategoria: listacategoria)));
    }); 
  }
  
}

