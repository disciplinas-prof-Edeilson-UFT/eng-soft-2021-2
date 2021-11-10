import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class OpcoesPerfil extends StatelessWidget {
  final String nomeArea;
  final String descricao;

  const OpcoesPerfil(
      {Key? key, required this.nomeArea, required this.descricao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        decoration: BoxDecoration(
          color: AppCores.branco,
        ),
        height: 80,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              /*Container(
                child: Padding(
                  padding: EdgeInsets.all(1),
                  child: Icon(Icons.add_comment),
                ),
              ),*/
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Icon(Icons.add_comment),
                    ),
                  ),
                  Text(
                    nomeArea,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    descricao,
                    style: TextStyle(
                        color: AppCores.preto,
                        letterSpacing: 2,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
