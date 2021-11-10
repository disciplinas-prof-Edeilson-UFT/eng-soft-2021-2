import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/restaurantes/ultimas_lojas_componente.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
        body: Column(children: const [
      Text(
        'Início',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Últimas lojas',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          )),
      Expanded(child: UltimasLojasRestaurante())
    ]));
  }
}
