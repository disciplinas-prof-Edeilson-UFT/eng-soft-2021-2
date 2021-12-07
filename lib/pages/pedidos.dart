import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/pedidos/historico_componente.dart';
import 'package:ifood_engenharia_de_software/components/pedidos/peca_novamente_card_componente.dart';
import 'package:ifood_engenharia_de_software/components/pedidos/mais_pedidos_por_vc.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';

import '../app_store.dart';

class PaginaPedidos extends StatefulWidget {
  const PaginaPedidos({Key? key}) : super(key: key);

  @override
  _PaginaPedidosState createState() => _PaginaPedidosState();
}

class _PaginaPedidosState extends State<PaginaPedidos>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 160,
            color: AppCores.cinza1,
            child: Wrap(alignment: WrapAlignment.center, children: [
              const Text(
                'Pedidos',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(height: 60),
              AnimatedBuilder(
                animation: appStore,
                builder: (_, __) {
                  return PecaNovamenteCard(
                    quantidade: appStore.state.pecaNovamenteData.pedidos[0].quantidade,
                    produto: appStore.state.pecaNovamenteData.pedidos[0].nome,
                    logoEstabelecimentoImgUrl: appStore.state.pecaNovamenteData.urlLogoRestaurante,
                  );
                },
              )
            ]),
          ),
          const SizedBox(height: 100),
          const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Mais Pedidos Por Você',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              )),
          AnimatedBuilder(
              animation: appStore,
              builder: (_, index) {
                return MaisPedidosPorVcCard(
                    maispedidoslist:
                        appStore.state.maispedidosData.maispedidoslist);
              }),
          const Expanded(child: HistoricoCard())
        ],
      ),
    );
  }
}
