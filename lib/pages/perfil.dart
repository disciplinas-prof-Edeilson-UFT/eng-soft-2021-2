import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifood_engenharia_de_software/components/perfil/abas_inferiores_do_perfil.dart';
import 'package:ifood_engenharia_de_software/components/perfil/cabecalho_perfil_components.dart';

class PaginaPerfil extends StatefulWidget {
  const PaginaPerfil({Key? key}) : super(key: key);

  @override
  _PaginaPerfilState createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: const [
          TopoPagina(),
      Expanded(
          child: AbaInfCard(
        listaabas: [
          Aba(
            "Ajuda",
            Icon(Icons.help_outline, color: Colors.black38,),
          ),
          Aba(
            "Configurações",
            Icon(Icons.settings, color: Colors.black38),
          ),
          Aba(
            "Segurança",
            Icon(Icons.security, color: Colors.black38,),
          ),
          Aba(
            "Usar no carro",
            Icon(Icons.qr_code, color: Colors.black38,),
          ),
          Aba(
            "Sugerir restaurantes",
            Icon(Icons.add_business_outlined, color: Colors.black38,),
          ),
        ],
      ))
    ]));
  }
}
