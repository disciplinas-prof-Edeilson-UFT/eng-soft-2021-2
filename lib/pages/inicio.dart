import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/inicio/filtro_component.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return FiltroComponent();
  }
}
