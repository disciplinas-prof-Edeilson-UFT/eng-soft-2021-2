import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifood_engenharia_de_software/components/perfil/abas_inferiores_do_perfil.dart';

class PaginaPerfil extends StatefulWidget {
  const PaginaPerfil({Key? key}) : super(key: key);

  @override
  _PaginaPerfilState createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil>
    with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Wrap(alignment: WrapAlignment.center, children: const [
              Text(
                'Perfil',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ]),
          ),
          const Expanded (child: AbaInfCard())
        ],
      ),
      //body: Column(

        //children: const [
        //],
      //),
    );

  }
}




