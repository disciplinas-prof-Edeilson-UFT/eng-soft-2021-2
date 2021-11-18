import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/inicio/card_da_categoria_componente.dart';
import 'package:ifood_engenharia_de_software/components/inicio/menu_de_redirecionamento.dart';
import 'package:ifood_engenharia_de_software/components/inicio/ultimas_lojas_componente.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Text('inicio',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        Menu(),
        CategoriaCard(categoriaLista: [
          Categoria('Pizza', AppCores.vermelhoPrincipal, 'https://cdn.discordapp.com/attachments/809775517493624852/910621459393699860/acai.jpg'),
          Categoria('Mercado', Color(0xffffffff), 'https://cdn.discordapp.com/attachments/809775517493624852/910621463466344478/brasileira.jpg'),
          Categoria('Vale Alimentacao', Color(0xffA553BE), 'https://cdn.discordapp.com/attachments/809775517493624852/910621464745623572/cafe.jpg'),
          Categoria('Sorvete', Color(0xffF8879B), 'https://cdn.discordapp.com/attachments/809775517493624852/910621465857101824/doces.jpg'),
          Categoria('Hamburguer', Color(0xffA553BE), 'https://cdn.discordapp.com/attachments/809775517493624852/910621467291570186/japones.jpg'),
          Categoria('Doces', Color(0xffF8879B), 'https://cdn.discordapp.com/attachments/868118606448324638/910683119441547284/saudavel.jpg')
        ]),
        Expanded(
            child: UltimasLojasRestaurante(
          listalojas: [
            'Loja exemplo1',
            'Loja exemplo2',
            'Loja exemplo3',
            'Loja exemplo4'
          ],
        ))
      ]),
    );
  }
}
