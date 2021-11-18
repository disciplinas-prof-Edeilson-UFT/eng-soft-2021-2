import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/inicio/card_da_categoria_componente.dart';
import 'package:ifood_engenharia_de_software/components/inicio/menu_de_redirecionamento.dart';
import 'package:ifood_engenharia_de_software/components/inicio/ultimas_lojas_componente.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';

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
      body: Column(children: [
        const Text('inicio',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        const Menu(),

        AnimatedBuilder(
          animation: appStore,
          builder: (_, index) =>
             CategoriaCard(categoriaLista:[Categoria(
              appStore.state.cardcategoriaData.categoriaLista[4].nome,
              appStore.state.cardcategoriaData.categoriaLista[4].cor,
              appStore.state.cardcategoriaData.categoriaLista[4].img_url,
            )]),
        ),


        const Expanded(
            child: UltimasLojasRestaurante(
          listalojas: [
            'Loja exemplo1',
            'Loja exemplo2',
            'Loja exemplo3',
            'Loja exemplo4'
          ],
        ))
      ]),
    );
  }
}
