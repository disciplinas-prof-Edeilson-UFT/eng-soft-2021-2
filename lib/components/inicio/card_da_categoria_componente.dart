import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categoria {
  final String nome;
  final Color cor;
  final String img_url;

  const Categoria(this.nome, this.cor, this.img_url);
}

class CategoriaCard extends StatelessWidget {
  final List<Categoria> categoriaLista;

  const CategoriaCard({Key? key, required this.categoriaLista})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(), // this for snapping
            itemCount: categoriaLista.length,
            itemBuilder: (_, index) => SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Column(children: [
                    const SizedBox(height: 40),
                    Container(

                      height: 40,
                      width: 90,
                      padding: const EdgeInsets.all(50),

                      decoration: BoxDecoration(
                          child: image(categoriaLista[index].img_url)
                          color: categoriaLista[index].cor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      categoriaLista[index].nome,
                      style: const TextStyle(
                          color: Color(0xff717171), fontSize: 14),
                    )
                  ]),
                )));
  }
}
