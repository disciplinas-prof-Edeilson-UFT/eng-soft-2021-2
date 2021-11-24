import 'actions/navegacao_rodape_action.dart';
import 'actions/peca_novamente_action.dart';
import 'actions/card_da_categoria_componente_action.dart';
import 'app_state.dart';
import 'actions/banner_de_categoria_action.dart';
import 'actions/ultimas_lojas_action.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is AlterarPagina) {
    return AppState(paginaAtual: action.pagina);
  } else if (action is AlterarPecaNovamente) {
    return AppState(
        paginaAtual: state.paginaAtual,
        pecaNovamenteData: action.pecaNovamenteData);
  } else if(action is AlterarBannerDeCategoria) {
      return AppState(   
        paginaAtual: state.paginaAtual,
        bannerdecategoriaData: action.bannerdecategoriaData);
  } else if (action is AlterarCard) {
    return AppState(
        paginaAtual: state.paginaAtual,
        cardcategoriaData:action.cardcategoriaData);
  }else if (action is AlterarUltimasLojas) {
    return AppState(
        paginaAtual: state.paginaAtual,
        ultimaslojasData:action.ultimaslojasData);
  }else {
    return AppState();
  }
}
