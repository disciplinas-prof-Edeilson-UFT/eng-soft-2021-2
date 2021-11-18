import 'models/mais_pedidos_por_vc_model.dart';

class AppState {
  final int paginaAtual;
  final MaisPedidosModel maispedidosData;

  AppState(
      {this.paginaAtual = 0,
      this.maispedidosData = const MaisPedidosModel([
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
      ])});
}
