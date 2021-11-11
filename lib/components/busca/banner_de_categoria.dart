import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class Categoria {
  final String nome;

  const Categoria(this.nome);
}

class BannersDeCategorias extends StatelessWidget {
  final List<Categoria> listacategoria;

  const BannersDeCategorias({Key? key, required this.listacategoria})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        fixedSize: const Size(175, 70),
        primary: AppCores.vermelhoPrincipal);

    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (4 / 2),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        shrinkWrap: true,
        itemCount: listacategoria.length,
        itemBuilder: (BuildContext context, index) {
          return ElevatedButton(
              style: style,
              onPressed: () {},
              child: Column(children: [
                const SizedBox(height: 15),
                Row(
                  children: [Text(listacategoria[index].nome)],
                )
              ]));
        });
  }
}
