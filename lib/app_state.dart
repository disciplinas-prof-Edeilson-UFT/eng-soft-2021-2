import 'models/peca_novamente_model.dart';

class AppState {
  final int paginaAtual;
  final PecaNovamenteModel pecaNovamenteData;

  AppState(
      {this.paginaAtual = 0,
      this.pecaNovamenteData = const PecaNovamenteModel(
          'https://aguardando.fase.de.utilizar.o.storage/',
          [Produto('Pizza G Calabresa C/Borda Mista', 1)])});
}
