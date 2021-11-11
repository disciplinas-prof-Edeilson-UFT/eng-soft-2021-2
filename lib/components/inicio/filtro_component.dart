import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

// ignore: must_be_immutable
class FiltroComponent extends StatelessWidget {
  const FiltroComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const PageScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 285.0, horizontal: 4.0),
        children: <Widget>[
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(color: AppCores.preto54)),
            color: AppCores.branco,
            textColor: AppCores.preto54,
            onPressed: () {},
            child: const Text(
              "Ordenar",
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(color: AppCores.preto54)),
            color: AppCores.branco,
            textColor: AppCores.preto54,
            onPressed: () {},
            child: const Text(
              "Para retirar",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(color: AppCores.preto54)),
            color: AppCores.branco,
            textColor: AppCores.preto54,
            onPressed: () {},
            child: const Text(
              "Entrega grátis",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(color: AppCores.preto54)),
            color: AppCores.branco,
            textColor: AppCores.preto54,
            onPressed: () {},
            child: const Text(
              "Entrega parceira",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(color: AppCores.preto54)),
            color: AppCores.branco,
            textColor: AppCores.preto54,
            onPressed: () {},
            child: const Text(
              "Filtros",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
