import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/actions/navegacao_rodape_action.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';
import 'package:share/share.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/widgets.dart';

class PageConvidar extends StatefulWidget {
  final User user;
  const PageConvidar({Key? key, required this.user}) : super(key: key);

  @override
  _PageConvidarState createState() => _PageConvidarState();
}

class _PageConvidarState extends State<PageConvidar>
    with SingleTickerProviderStateMixin {
  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppCores.branco,
        foregroundColor: AppCores.vermelhoPrincipal,
        title: const Text('Convide amigos',
            style: TextStyle(color: AppCores.vermelhoPrincipal)),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20, left: 10),
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                appStore.dispatcher(AlterarPagina(3));
              },
              child: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(height: 50.0),
          Container(
            width: 80.0,
            color: Colors.white,
            child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/1140/1140033.png'),
          ),
          const SizedBox(height: 30.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: RichText(
              text: const TextSpan(
                text: "Indique o iFood e ganhe",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                children: <TextSpan>[
                  TextSpan(
                      text: ' R\$ 10', style: TextStyle(color: Colors.red)),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
            child: Text(
                'Compartilhe seu codigo com os amigos que ainda não pedem iFood. Eles ganham R\$ 15 na primeira compra e você ganha R\$ 10 em seu proximo pedido.',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 13.5,
                ),
                textAlign: TextAlign.center),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text('Ver termos e condições',
                style: TextStyle(
                  color: Colors.red[500],
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center),
          ),
          Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              decoration: const BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                children: <Widget>[
                  const Text('5ELJAE12Q9',
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.black87,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center),
                  Text('Copiar código',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12.0,
                      ),
                      textAlign: TextAlign.center),
                ],
              )),

          //Botão de compartilhamento
          Expanded(
            child: Align(
              child: MaterialButton(
                padding: const EdgeInsets.symmetric(horizontal: 120.0),
                elevation: 2.0,
                height: 50.0,
                minWidth: 100.0,
                color: Colors.red,
                child: const Text(
                  'Compartilhar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                onPressed: () {
                  Share.share(
                      'Bateu aquela fome? ${_currentUser.displayName} e nós do #eng-soft-2021-2 vamos te ajudar! Insira o cupom 5ELJAE12Q9 e ganhe R\$ 15 de desconto na sua primeira compra pelo app. https://ifoodbr.onelink.me/F4X4/mgm?mgm_code=5ELJAE12Q9');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
