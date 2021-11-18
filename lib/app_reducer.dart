import 'actions/navegacao_rodape_action.dart';
import 'actions/peca_novamente_action.dart';
import 'actions/card_da_categoria_componente_action.dart';
import 'app_state.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is AlterarPagina) {
    return AppState(paginaAtual: action.pagina);
  } else if (action is AlterarPecaNovamente) {
    return AppState(
        paginaAtual: state.paginaAtual,
        pecaNovamenteData: action.pecaNovamenteData);
  } else if (action is AlterarCard) {
    return AppState(
        paginaAtual: state.paginaAtual,
        cardcategoriaData:action.cardcategoriaData);
  }else {
    return AppState();
  }
}
