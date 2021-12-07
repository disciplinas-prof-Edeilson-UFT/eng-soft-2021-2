import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';
import 'package:ifood_engenharia_de_software/models/ultimas_lojas_model.dart';
import 'package:ifood_engenharia_de_software/actions/navegacao_rodape_action.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';

class UltimasLojasRestaurante extends StatelessWidget {
  final List<Lojas> listalojas;

  const UltimasLojasRestaurante({Key? key, required this.listalojas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Últimas lojas',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                )),
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: InkWell(
                      child: const Text(
                        'Ver mais',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.red),
                      ),
                      onTap: () {
                        appStore.dispatcher(AlterarPagina(2));
                      },
                    ))),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: SizedBox(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: listalojas.length,
                  itemBuilder: (_, index) => SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Column(children: [
                          CircleAvatar(
                              radius: 33,
                              backgroundImage:
                                  NetworkImage(listalojas[index].logourl),
                              backgroundColor: Colors.transparent),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              listalojas[index].nome,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  color: AppCores.preto54,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ]),
                      ))),
        ),
      ],
    );
  }
}
