import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/layout_default/navegacao_rodape_component.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';

class LayoutDefault extends StatefulWidget {
  const LayoutDefault({Key? key}) : super(key: key);

  @override
  _LayoutDefaultState createState() => _LayoutDefaultState();
}

class _LayoutDefaultState extends State<LayoutDefault>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: NavegacaoRodape(),
    );
  }
}
