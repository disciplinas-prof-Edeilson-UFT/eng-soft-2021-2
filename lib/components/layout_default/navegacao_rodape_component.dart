import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/actions/navegacao_rodape_action.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';

class NavegacaoRodape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        appStore.dispatcher(AlterarPagina());
      },
      currentIndex: appStore.state.paginaAtual,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: "Início"),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined), label: "Busca"),
        BottomNavigationBarItem(
            icon: Icon(Icons.receipt_outlined), label: "Pedidos"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: "Perfil"),
      ],
    );
  }
}
