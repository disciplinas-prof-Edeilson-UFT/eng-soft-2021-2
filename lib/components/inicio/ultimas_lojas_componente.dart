import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class UltimasLojasRestaurante extends StatelessWidget {
  final List<String> listalojas;

  const UltimasLojasRestaurante({Key? key, required this.listalojas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Últimas lojas',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          )),
      Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: listalojas.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 33,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          listalojas[index],
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: AppCores.preto54,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                );
              }))
    ]);
  }
}
