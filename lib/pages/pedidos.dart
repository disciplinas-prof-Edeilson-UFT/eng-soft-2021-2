import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/pedidos/peca_novamente_card_componente.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

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
            child: Wrap(alignment: WrapAlignment.center, children: const [
              Text(
                'Pedidos',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 60),
              PecaNovamenteCard(
                quantidade: 1,
                produto: 'Pizza G Calabresa C/Borda Mista',
              )
            ]),
          ),
        ],
      ),
    );
  }
}
