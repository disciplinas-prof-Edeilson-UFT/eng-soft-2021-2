import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
        height: 85,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 0, left: 20, bottom: 0),
                    child: Text(
                      nomeArea,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 0, left: 60, bottom: 0),
                    child: Text(
                      descricao,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black45,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
