import 'package:ifood_engenharia_de_software/store/store.dart';

import 'actions/navegacao_rodape_action.dart';

class AppState {
  final int paginaAtual;

  AppState({this.paginaAtual = 0});
}

AppState _reducer(AppState state, dynamic action) {
  if (action is AlterarPagina) {
    return AppState(paginaAtual: 3);
  } else {
    return AppState(paginaAtual: 1);
  }
}

final appStore = Store<AppState>(
  initialState: AppState(),
  reducer: _reducer,
);
