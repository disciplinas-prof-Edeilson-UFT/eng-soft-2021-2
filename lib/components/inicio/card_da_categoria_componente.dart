import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/models/card_da_categoria_componente_model.dart';


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
                    const SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.all(5),
                      child:Container(
                        color: const Color(0xffffffff),

                    child:Stack(



                      children: <Widget>[

                        Container(

                          height: 40,
                          width: 90,




                          decoration: BoxDecoration(

                              color: categoriaLista[index].cor,
                              borderRadius:
                              const BorderRadius.all(Radius.circular(8))
                          ),
                        ),
                        Image.network(

                          categoriaLista[index].img_url,


                        )
                      ],
                    ),),),

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
