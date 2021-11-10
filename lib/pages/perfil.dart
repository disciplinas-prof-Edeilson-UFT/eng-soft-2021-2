import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/perfil/cards_perfil_componente.dart';

class PaginaPerfil extends StatefulWidget {
  const PaginaPerfil({Key? key}) : super(key: key);

  @override
  _PaginaPerfilState createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          PecaNovamenteCard(
            nomeArea: 'Chats',
            descricao: 'Minhas Conversas',
          )
        ],
      ),
    );
  }
}
