import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class Aba {
  final String nomeaba;
  final Icon icon;
  const Aba(this.nomeaba, this.icon);
}

class AbaInfCard extends StatelessWidget {
  final List<Aba> listaabas;
  const AbaInfCard({Key? key, required this.listaabas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: listaabas.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 15.0),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          listaabas[index].icon,
                          Padding(
                            padding: const EdgeInsets.only(left: 13.0),
                            child: Text(
                              listaabas[index].nomeaba,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.black45),
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios_sharp,
                              color: Colors.black38, size: 19),
                        ],
                      ),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          color: Colors.black12,
                          width: 0.6,
                        ),
                      )),
                      padding: const EdgeInsets.only(bottom: 20, top: 20),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
