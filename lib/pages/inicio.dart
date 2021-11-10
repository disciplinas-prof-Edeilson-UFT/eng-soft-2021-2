import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/inicio/ultimas_lojas_componente.dart';

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
      Expanded(child: UltimasLojasRestaurante(listalojas: ['Loja exemplo1', 'Loja exemplo2', 'Loja exemplo3', 'Loja exemplo4'],))
    ]));
  }
}
