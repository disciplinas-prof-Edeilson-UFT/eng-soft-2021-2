import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';
import 'package:ifood_engenharia_de_software/components/layout_default/navegacao_rodape_componente.dart';
import 'package:ifood_engenharia_de_software/pages/busca.dart';
import 'package:ifood_engenharia_de_software/pages/inicio.dart';
import 'package:ifood_engenharia_de_software/pages/pedidos.dart';
import 'package:ifood_engenharia_de_software/pages/perfil.dart';

class LayoutDefault extends StatefulWidget {
  final User user;

  const LayoutDefault({Key? key, required this.user}) : super(key: key);

  @override
  _LayoutDefaultState createState() => _LayoutDefaultState();
}

class _LayoutDefaultState extends State<LayoutDefault>
    with SingleTickerProviderStateMixin {
  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: AnimatedBuilder(
          animation: appStore,
          builder: (_, __) {
            if (appStore.state.paginaAtual == 0) {
              return const PaginaInicio();
            } else if (appStore.state.paginaAtual == 1) {
              return const PaginaBusca();
            } else if (appStore.state.paginaAtual == 2) {
              return const PaginaPedidos();
            } else if (appStore.state.paginaAtual == 3) {
              return PaginaPerfil(
                user: _currentUser,
              );
            } else {
              return const Text('Error!!');
            }
          }),
      bottomNavigationBar: const NavegacaoRodape(),
    ));
  }
}
