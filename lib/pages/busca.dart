import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/busca/banner_de_categoria_componente.dart';
import 'package:ifood_engenharia_de_software/components/busca/caixa_de_pesquisa_componente.dart';
import '../app_store.dart';

class PaginaBusca extends StatefulWidget {
  const PaginaBusca({Key? key}) : super(key: key);

  @override
  _PaginaBuscaState createState() => _PaginaBuscaState();
}

class _PaginaBuscaState extends State<PaginaBusca>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const MecanismodeBusca(),
      
      const Align(
        alignment: Alignment.topLeft,
        child:Padding(
         padding: EdgeInsets.only(left: 20,bottom:30),
          child:Text(
          'Categorias',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        )
      ),
      AnimatedBuilder(
          animation: appStore,
          builder: (_, __) {
            return SizedBox(
              width:390,
              child:BannersDeCategorias(nome: 
                appStore.state.bannerdecategoriaData.nome, imgurl:appStore.state.bannerdecategoriaData.imgurl
              )  
            );
          })
    ]));
  }
}
