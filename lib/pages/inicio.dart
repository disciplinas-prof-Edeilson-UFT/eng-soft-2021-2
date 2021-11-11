import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/inicio/card_da_categoria_componente.dart';
import 'package:ifood_engenharia_de_software/components/inicio/menu_de_redirecionamento.dart';
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
          Menu(),
          CategoriaCard(categoriaLista: [
            Categoria('Pizza', AppCores.vermelhoPrincipal),
            Categoria('Mercado', Color(0xffb5cf47)),
            Categoria('Vale Alimentacao', Color(0xffA553BE)),
            Categoria('Sorvete', Color(0xffF8879B)),
            Categoria('Hamburguer', Color(0xffA553BE)),
            Categoria('Doces', Color(0xffF8879B)),
          ])
        ],
      ),
    );
  }
}
