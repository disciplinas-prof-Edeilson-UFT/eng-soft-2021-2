import 'package:ifood_engenharia_de_software/models/abas_inferiores_model.dart';

class AlterarAbasInferioresPerfil{
  final List<Abas> listadasabas;

  AlterarAbasInferioresPerfil(this.listadasabas);

  AbasInferioresModel abasinferioresData = const AbasInferioresModel(
      [
        Abas("Ajuda",'https://imgur.com/NgRmdFM.png'),
        Abas("Configurações",'https://imgur.com/TseB9Qd.png'),
        Abas("Segurança",'https://imgur.com/bb3Vz0Y.png'),
        Abas("Usar no carro",'https://imgur.com/yK7SRwg.png'),
        Abas("Sugerir restaurantes",'https://imgur.com/n9yeTcC.png'),
      ]
  );
}