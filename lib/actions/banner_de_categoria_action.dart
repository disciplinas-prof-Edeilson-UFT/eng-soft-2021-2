import 'package:flutter/cupertino.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';
import 'package:ifood_engenharia_de_software/components/busca/banner_de_categoria_componente.dart';
import 'package:ifood_engenharia_de_software/models/banner_de_categoria_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../app_store.dart';

class AlterarBannerDeCategoria {
 
  FirebaseFirestore bdc = FirebaseFirestore.instance;
  
  final BannerDeCategoriaModel bannerdecategoriaData;
  
  AlterarBannerDeCategoria({this.bannerdecategoriaData = const BannerDeCategoriaModel() });
 
  void atualizaModel (){
    
    bdc.collection('bannerdecategoria').get().then((QuerySnapshot querySnapshot){
      querySnapshot.docs.forEach((item) {
        BannerDeCategoriaModel bannerdecategoriaData =  BannerDeCategoriaModel(nome: item['nome'], imgurl:item['imgurl']) ;
        appStore.dispatcher(AlterarBannerDeCategoria(bannerdecategoriaData : bannerdecategoriaData));  
       }); 
      
   
      });
  }                                  
 
  
}
