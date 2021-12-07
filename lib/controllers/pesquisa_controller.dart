import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class DadosController extends GetxController {
  Future Dados(String collettion) async {
    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    QuerySnapshot snapshot =
        await firebaseFirestore.collection(collettion).get();
    return snapshot.docs;
  }

  Future Consulta(String queryString) async {
    return FirebaseFirestore.instance
        .collection('lojas')
        .where('nome', isEqualTo: queryString)
        .get();
  }
}
