import 'actions/navegacao_rodape_action.dart';
import 'app_state.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is AlterarPagina) {
    return AppState(paginaAtual: action.pagina);
  } else {
    return AppState();
  }
}
