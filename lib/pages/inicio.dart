import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/inicio/card_da_categoria_componente.dart';

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
      body: Column(
        children: [
          Text(
            'inicio',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          CategoriaCard()
        ],
      ),
    );
  }
}
