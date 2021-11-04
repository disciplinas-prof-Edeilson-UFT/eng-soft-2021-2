import 'package:ifood_engenharia_de_software/store/store.dart';

import 'app_reducer.dart';
import 'app_state.dart';

final appStore = Store<AppState>(
  initialState: AppState(),
  reducer: reducer,
);
