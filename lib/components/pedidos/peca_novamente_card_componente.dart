import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class PecaNovamenteCard extends StatelessWidget {
  final int quantidade;
  final String produto;
  final String logoEstabelecimentoImgUrl;

  const PecaNovamenteCard(
      {Key? key,
      required this.quantidade,
      required this.produto,
      required this.logoEstabelecimentoImgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: .9,
      child: Container(
        decoration: BoxDecoration(
          color: AppCores.branco,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        height: 170,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    'Peça de novo',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Image.network(logoEstabelecimentoImgUrl, width: 50,)

                ],
              ),
              Row(
                children: [
                  Container(
                    child: Text(quantidade.toString()),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: AppCores.cinza1,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    produto,
                    style: TextStyle(color: AppCores.cinza5),
                  )
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 45,
                decoration: const BoxDecoration(
                    color: AppCores.vermelhoPrincipal,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: const Center(
                    child: Text('Adicionar à sacola',
                        style: TextStyle(
                            color: AppCores.branco,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
