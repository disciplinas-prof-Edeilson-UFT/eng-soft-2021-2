import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class BannerDeCategorias extends StatelessWidget {
  final String categoria;

  const BannerDeCategorias(
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

class BannersDeCategorias extends StatelessWidget {
 
  const BannersDeCategorias(
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
                BannerDeCategorias(
                  categoria:'Express',
                ),
                BannerDeCategorias(
                  categoria:'Farmácia',
                ),
                BannerDeCategorias(
                  categoria:'Brasileira',
                ),
                BannerDeCategorias(
                 categoria:'Marmita',
                ),
                BannerDeCategorias(
                  categoria:'Carnes',
                ),
                BannerDeCategorias(
                  categoria:'Contemporânea',
                ),
                BannerDeCategorias(
                  categoria:'Japonesa',
                ) 
              ],
            ),
            const SizedBox(width: 17),
            Column(
              children: const [
                BannerDeCategorias(
                  categoria:'Mercado',
                ),
                BannerDeCategorias(
                  categoria:'Bebidas',
                ),
                BannerDeCategorias(
                  categoria:'Saudável',
                ),
                BannerDeCategorias(
                  categoria:'Lanches',
                ),
                BannerDeCategorias(
                  categoria:'Italianos',
                ),
                BannerDeCategorias(
                  categoria:'Pizza',
                ),
                BannerDeCategorias(
                  categoria:'Poke',
                )
                ]
              )
            ]  
          )
    );
  }
}
