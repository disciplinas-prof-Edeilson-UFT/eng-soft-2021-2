import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/inicio/card_da_categoria_componente.dart';
import 'package:ifood_engenharia_de_software/components/inicio/mercadotoque_aqui_e_escolha_os_itens.dart';
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
          builder: (_, index) {
             return CategoriaCard(categoriaLista:

              appStore.state.cardcategoriaData.categoriaLista

            );}),



        AnimatedBuilder(
              animation: appStore,
              builder: (_, index) {
                return UltimasLojasRestaurante(
                    listalojas:
                        appStore.state.ultimaslojasData.listadaslojas);
              }),
          Expanded(child: CardEscolha())
      ]),
    );
  }
}
