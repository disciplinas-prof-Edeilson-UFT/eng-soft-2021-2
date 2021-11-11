import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class Maispedidos {
  final String nome;

  const Maispedidos(this.nome);
}

class MaispedidosCard extends StatelessWidget {
  final List<Maispedidos> maisPedidosLista;

  const MaispedidosCard({Key? key, required this.maisPedidosLista})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: maisPedidosLista.length,
            itemBuilder: (_, index) => SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Column(children: [
                    const SizedBox(height: 40),
                    Container(
                      height: 120,
                      width: 150,
                      padding: const EdgeInsets.all(50),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                    ),Text(
                      maisPedidosLista[index].nome,
                      style: const TextStyle(
                          color: Color(0xff717171), fontSize: 14),
                    ),
                    const SizedBox(height: 10),
                  ]),
                )));
  }
}
