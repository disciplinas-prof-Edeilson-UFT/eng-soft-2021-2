import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ifood_engenharia_de_software/models/peca_novamente_model.dart';

import '../app_store.dart';

class AtualizarPecaNovamente {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final PecaNovamenteModel pecaNovamenteData;

  AtualizarPecaNovamente({this.pecaNovamenteData = const PecaNovamenteModel()});

  void atualizar() {
    firestore
        .collection('pecadenovo')
        .doc('zVxxTLxTaNDSsy4LWmfH')
        .get()
        .then((DocumentSnapshot documento) {
      String urlLogoRestaurante = documento['logo_estabelecimento_img_url'];
      Produto produto = Produto(documento['produto'], documento['quantidade']);
      PecaNovamenteModel pecaNovamenteData = PecaNovamenteModel(
          urlLogoRestaurante: urlLogoRestaurante, pedidos: [produto]);

      appStore.dispatcher(
          AtualizarPecaNovamente(pecaNovamenteData: pecaNovamenteData));
    });
  }
}
