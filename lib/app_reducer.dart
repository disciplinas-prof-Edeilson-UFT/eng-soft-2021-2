import 'package:ifood_engenharia_de_software/models/mais_pedidos_por_vc_model.dart';

import 'actions/banner_de_categoria_action.dart';
import 'actions/card_da_categoria_componente_action.dart';
import 'actions/card_mais_pedidos_por_vc_action.dart';
import 'actions/navegacao_rodape_action.dart';
import 'actions/peca_novamente_action.dart';
import 'actions/ultimas_lojas_action.dart';
import 'app_state.dart';
import 'actions/abas_inferiores_perfil_action.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is AlterarPagina) {
    if (action.pagina == 2) {
      AtualizarPecaNovamente().atualizar();
      AlterarMaisPedidos().atualizar();
    } else if (action.pagina == 0) {
      AlterarCard().atualizar();
    } else if (action.pagina == 1) {
      AlterarBannerDeCategoria().atualizaModel();
    }

    return AppState(
        paginaAtual: action.pagina, pecaNovamenteData: state.pecaNovamenteData, bannerdecategoriaData: state.bannerdecategoriaData);
  } else if (action is AtualizarPecaNovamente) {
    return AppState(
        paginaAtual: state.paginaAtual,
        pecaNovamenteData: action.pecaNovamenteData);
  } else if (action is AlterarMaisPedidos) {
    return AppState(
        paginaAtual: state.paginaAtual,
        maispedidosData: action.maispedidosData);
  } else if (action is AlterarBannerDeCategoria) {
    return AppState(
        paginaAtual: state.paginaAtual,
        bannerdecategoriaData: action.bannerdecategoriaData);
  } else if (action is AlterarCard) {
    return AppState(
        paginaAtual: state.paginaAtual,
        cardcategoriaData: action.cardcategoriaData);
  } else if (action is AlterarUltimasLojas) {
    return AppState(
        paginaAtual: state.paginaAtual,
        ultimaslojasData: action.ultimaslojasData);
  } else if (action is AlterarAbasInferioresPerfil) {
    return AppState(
        paginaAtual: state.paginaAtual,
        abasinferioresData: action.abasinferioresData);
  } else {
    return AppState();
  }
}
