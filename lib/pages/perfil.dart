import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifood_engenharia_de_software/components/perfil/abas_inferiores_do_perfil.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class PaginaPerfil extends StatefulWidget {
  const PaginaPerfil({Key? key}) : super(key: key);

  @override
  _PaginaPerfilState createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded (child: AbaInfCard())
        ],
      ),
    );

  }
}



