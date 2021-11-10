import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class BannersDeCategorias extends StatelessWidget {
  final String categoria;

  const BannersDeCategorias(
    {Key? key, required this.categoria}) 
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold), fixedSize: const Size(195, 70), primary: AppCores.vermelhoPrincipal );
    
    return Center(
     child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: Column(
              
              children: [
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text(categoria)
                  ],
                )
              ]
            )
          )
        ]  
      ),
    );
 }
}

class ListaBannersDeCategorias extends StatelessWidget {
 
  const ListaBannersDeCategorias(
    {Key? key,})
    : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Center(
      
        child: Row(
          children:[
            const SizedBox(width: 2),
            Column(
              children: const [
                BannersDeCategorias(
                  categoria:'Express',
                ),
                BannersDeCategorias(
                  categoria:'Farmácia',
                ),
                BannersDeCategorias(
                  categoria:'Brasileira',
                ),
                BannersDeCategorias(
                 categoria:'Marmita',
                ),
                BannersDeCategorias(
                  categoria:'Carnes',
                ),
                BannersDeCategorias(
                  categoria:'Contemporânea',
                ),
                BannersDeCategorias(
                  categoria:'Japonesa',
                ) 
              ],
            ),
            const SizedBox(width: 17),
            Column(
              children: const [
                BannersDeCategorias(
                  categoria:'Mercado',
                ),
                BannersDeCategorias(
                  categoria:'Bebidas',
                ),
                BannersDeCategorias(
                  categoria:'Saudável',
                ),
                BannersDeCategorias(
                  categoria:'Lanches',
                ),
                BannersDeCategorias(
                  categoria:'Italianos',
                ),
                BannersDeCategorias(
                  categoria:'Pizza',
                ),
                BannersDeCategorias(
                  categoria:'Poke',
                )
                ]
              )
            ]  
          )
    );
  }
}
   