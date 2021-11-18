import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/pedidos/historico_componente.dart';
import 'package:ifood_engenharia_de_software/components/pedidos/peca_novamente_card_componente.dart';
import 'package:ifood_engenharia_de_software/components/pedidos/mais_pedidos_por_vc.dart';
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
          MaisPedidosPorVcCard(
            maispedidoslist: [
              MaisPedidos('Bar do Diluc', 'Fechado',
                  'https://cdn.discordapp.com/attachments/809775517493624852/910734117115674624/b3225dcdeebef9074c9c082afde8d495_2527226506439238336.png'),
              MaisPedidos('Noelle´s Pancakes', '',
                  'https://cdn.discordapp.com/attachments/809775517493624852/910732173445832754/4ea27fde21b997bc3fb141786fc1719c_6363129461192613770.png'),
              MaisPedidos('Escudo Inquebrável', 'Fechado',
                  'https://cdn.discordapp.com/attachments/809775517493624852/910740130833244160/show.png'),
              MaisPedidos('Presente dos Reis', 'Fechado',
                  'https://media.discordapp.net/attachments/809775517493624852/910736507881553931/b891ddaf349a66bf1cdcccabec3c9a5b.png'),
              MaisPedidos('Vikings', '',
                  'https://cdn.discordapp.com/attachments/809775517493624852/910736208626323497/22132_800x800.png')
            ],
          ),
          const Expanded(child: HistoricoCard())
        ],
      ),
    );
  }
}
