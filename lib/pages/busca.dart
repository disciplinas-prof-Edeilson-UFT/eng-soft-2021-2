import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/busca/banner_de_categoria.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class PaginaBusca extends StatefulWidget {
  const PaginaBusca({Key? key}) : super(key: key);

  @override
  _PaginaBuscaState createState() => _PaginaBuscaState();
}

class _PaginaBuscaState extends State<PaginaBusca>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [ 
          Container(
            width: double.infinity,
            height: 160,
            color: AppCores.cinza1,
            child: Wrap(alignment: WrapAlignment.center, children: const [
              Text(
                'Pedidos',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize:25),
              ),
            ])
          ),
          const Align(
           alignment: Alignment.topLeft,
           child: BannersDeCategorias(listacategoria: [Categoria('lista1')]), /*coluna esquerda*/
          ),
          const Align(
            alignment: Alignment.topRight,
            
            child:BannersDeCategorias(listacategoria: [Categoria('lista2')]) /*coluna direita*/
          )
        ] 
      )    
    );
  }
 }     
