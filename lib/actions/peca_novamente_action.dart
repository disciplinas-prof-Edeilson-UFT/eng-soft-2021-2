import 'package:ifood_engenharia_de_software/models/peca_novamente_model.dart';

class AlterarPecaNovamente {
  final String urlLogoRestaurante;
  final List<Produto> pedidos;

  AlterarPecaNovamente(this.urlLogoRestaurante, this.pedidos);

  PecaNovamenteModel pecaNovamenteData = const PecaNovamenteModel(
      'https://aguardando.fase.de.utilizar.o.storage/',
      [Produto('Pizza G Calabresa C/Borda Mista', 1)]);
}
