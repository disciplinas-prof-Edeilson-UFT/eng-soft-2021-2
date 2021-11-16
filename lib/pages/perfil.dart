import 'package:flutter/material.dart';

import '../components/perfil/card_convide_amigos.dart';

class PaginaPerfil extends StatefulWidget {
  const PaginaPerfil({Key? key}) : super(key: key);

  @override
  _PaginaPerfilState createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return CardConvidar();
  }
}
