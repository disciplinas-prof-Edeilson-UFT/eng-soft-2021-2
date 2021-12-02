import 'package:ifood_engenharia_de_software/models/ultimas_lojas_model.dart';

class AlterarUltimasLojas {
  final List<Lojas> listadaslojas;

  AlterarUltimasLojas(this.listadaslojas);

  UltimasLojasModel ultimaslojasData = const UltimasLojasModel(
    [
     Lojas("McDonald's",'https://i.imgur.com/L8VcJbD.png'),
      Lojas('Burger King','https://i.imgur.com/BhBX8HH.png'),
      Lojas('Giraffas','https://i.imgur.com/0I9W33L.png'),
      Lojas('Subway','https://i.imgur.com/rYyDTK6.png'),
    ]
  );
}
