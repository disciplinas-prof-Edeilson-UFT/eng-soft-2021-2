import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/models/banner_de_categoria_model.dart';

class BannersDeCategorias extends StatelessWidget {
  final String nome;
  final String imgurl;

  const BannersDeCategorias({Key? key, required this.nome, required this.imgurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (4 / 2),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        shrinkWrap: true,

        itemBuilder: (BuildContext context, index) {
          return Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[100],
            image:  DecorationImage(
              fit: BoxFit.fill,   
              image: NetworkImage(imgurl)
            ),
          ),  

            child:Padding(
                padding: const EdgeInsets.all(5),
                child:Text(nome,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),)
                )
          );
        }
    );
  }
}

              



























