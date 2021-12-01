import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/models/abas_inferiores_model.dart';


class AbaInfCard extends StatelessWidget {
  final List<Abas> listaabas;

  const AbaInfCard({Key? key, required this.listaabas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
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
                            CircleAvatar(
                                  radius:12,
                                  backgroundImage:
                                  NetworkImage(listaabas[index].icon),
                                  backgroundColor: Colors.transparent,
                                ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Text(
                                listaabas[index].nome,
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
                }),
          )
        ],
      ),
    );
  }
}
