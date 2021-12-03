import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/busca/caixa_de_pesquisa_componente.dart';

class PaginaBusca extends StatefulWidget {
  const PaginaBusca({Key? key}) : super(key: key);
  @override
  _PaginaBuscaState createState() => _PaginaBuscaState();
}

class _PaginaBuscaState extends State<PaginaBusca>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const MecanismodeBusca();
  }
}
