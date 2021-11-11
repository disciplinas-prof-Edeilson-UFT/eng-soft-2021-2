import 'package:flutter/material.dart';


class TopoPagina extends StatefulWidget {
  const TopoPagina({Key? key}) : super(key: key);

  @override
  _TopoPaginaState createState() => _TopoPaginaState();
}


class _TopoPaginaState extends State<TopoPagina> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 10, bottom: 50),
            child: Image.network(
              "https://imgur.com/EPUWxPP.png",
              height: 50,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 60, left: 16, bottom: 50),
            child: Text(
              //Exemplo nome, podendo utilizar uma funacao para recupera nome usuario
              "Vinicius de Oliveira",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.qr_code_scanner_outlined,
            ),
            padding: const EdgeInsets.only(left: 120),
            alignment: Alignment.topLeft,
            onPressed: () {
              
            }
          ),
        ],
      ),
    );
  }
}
