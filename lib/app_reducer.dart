import 'actions/card_mais_pedidos_por_vc_action.dart';
import 'actions/navegacao_rodape_action.dart';
import 'actions/peca_novamente_action.dart';
import 'actions/card_da_categoria_componente_action.dart';
import 'app_state.dart';
import 'actions/banner_de_categoria_action.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is AlterarPagina) {
    if (action.pagina == 1) {
      AlterarBannerDeCategoria().atualizaModel();
    }
    return AppState(
        paginaAtual: action.pagina,
        bannerdecategoriaData: state.bannerdecategoriaData);
  } else if (action is AlterarMaisPedidos) {
    return AppState(
        paginaAtual: state.paginaAtual,
        maispedidosData: action.maispedidosData);
  } else if (action is AlterarPecaNovamente) {
    return AppState(
        paginaAtual: state.paginaAtual,
        pecaNovamenteData: action.pecaNovamenteData);
  } else if (action is AlterarBannerDeCategoria) {
    return AppState(
        paginaAtual: state.paginaAtual,
        bannerdecategoriaData: action.bannerdecategoriaData);
  } else if (action is AlterarCard) {
    return AppState(
        paginaAtual: state.paginaAtual,
        cardcategoriaData: action.cardcategoriaData);
  } else {
    return AppState();
  }
}
