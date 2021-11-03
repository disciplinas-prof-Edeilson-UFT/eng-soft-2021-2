import 'package:flutter/material.dart';

class NavegacaoRodape extends StatelessWidget {
  const NavegacaoRodape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
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
