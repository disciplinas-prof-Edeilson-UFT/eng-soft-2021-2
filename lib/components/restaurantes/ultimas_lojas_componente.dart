import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';
 

class UltimasLojasRestaurante extends StatelessWidget {
  const UltimasLojasRestaurante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final listalojas = <String>['Loja exemplo1', 'Loja exemplo2', 'Loja exemplo3', 'Loja exemplo4'];

    
    return Row(children: <Widget>[
      Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: listalojas.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Column(
              children:  [
                const CircleAvatar(
                  radius: 33,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                          listalojas[index],
                            textAlign: TextAlign.left,
                             style: const TextStyle(color: AppCores.preto54,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                  ),
                )
              ],
          ),
            );
          }
        ))
    ]);
  }
}