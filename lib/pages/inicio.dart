import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/inicio/card_da_categoria_componente.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text('inicio',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          CategoriaCard(categoriaLista: [
            Categoria('pizza', AppCores.vermelhoPrincipal),
            Categoria('promocoes', Color(0xff11fa00)),
            Categoria('vale alimentacao', Color(0xfcc504fa)),
            Categoria('hamburguer', Color(0xffe79b02)),
            Categoria('sorvete', Color(0xfffa4700)),
            Categoria('doces', Color(0xff060afc)),

          ]
           )
        ],
      ),
    );
  }
}
