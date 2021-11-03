import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/componentes/layout_default/navegacao_rodape.dart';

class LayoutDefault extends StatelessWidget {
  const LayoutDefault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: NavegacaoRodape(),
    );
  }
}
