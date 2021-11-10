import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/busca/banner_de_categoria.dart';
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
        children: const[ 
          Text(
            'Busca',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          BannersDeCategorias()
        ]
      ),
    );
  }
}
