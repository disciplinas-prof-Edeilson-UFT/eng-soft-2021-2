import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/models/mais_pedidos_por_vc_model.dart';

class MaisPedidosPorVcCard extends StatelessWidget {
  final List<MaisPedidos> maispedidoslist;

  const MaisPedidosPorVcCard({Key? key, required this.maispedidoslist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: maispedidoslist.length, // this for snapping
            itemBuilder: (_, index) => SizedBox(
                  width: MediaQuery.of(context).size.width * 0.38,
                  child: Column(children: [
                    const SizedBox(height: 10),
                    Container(
                      height: 140,
                      width: 130,
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          CircleAvatar(
                            radius: 36.0,
                            backgroundImage:
                                NetworkImage(maispedidoslist[index].fotourl),
                            backgroundColor: Colors.transparent,
                          ),
                          const SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.all(0.5),
                          ),
                          Text(
                            maispedidoslist[index].nome,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1),
                            child: Text(
                              maispedidoslist[index].estado,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                )));
  }
}
