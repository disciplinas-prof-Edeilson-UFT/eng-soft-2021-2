import '../models/ultimas_lojas_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AlterarUltimasLojas {
  FirebaseFirestore query = FirebaseFirestore.instance;
  final UltimasLojasModel ultimaslojasData;

  AlterarUltimasLojas(
      {this.ultimaslojasData = const UltimasLojasModel()});

  List<Lojas> listadaslojas = [];
  void atualizar() {
    query
        .collection('lojas')
        .get()
        .then((QuerySnapshot querySnapshot) {
          querySnapshot.docs.forEach((doc) {
            listadaslojas.add(Lojas(doc['nome'], doc['img_url'])
            );
          }); 
          appStore.dispatcher(AlterarUltimasLojas(ultimaslojasData: UltimasLojasModel(listadaslojas: listadaslojas)));
    }); 
  }
  
}