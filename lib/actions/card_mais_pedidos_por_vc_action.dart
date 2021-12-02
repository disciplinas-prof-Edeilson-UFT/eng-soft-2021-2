import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/models/mais_pedidos_por_vc_model.dart';

import '../app_store.dart';

class AlterarMaisPedidos {
  final MaisPedidosModel maispedidosData;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  AlterarMaisPedidos({this.maispedidosData = const MaisPedidosModel()});

  List<MaisPedidos> maispedidoslist = [];

  void atualizar() {
    FirebaseFirestore.instance
        .collection('mais_pedidos')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        maispedidoslist
            .add(MaisPedidos(doc['nome'], doc['estado'], doc['fotourl']));
      });
      appStore.dispatcher(AlterarMaisPedidos(
          maispedidosData: MaisPedidosModel(maispedidoslist: maispedidoslist)));
    });
  }
}
