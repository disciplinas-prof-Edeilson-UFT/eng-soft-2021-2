
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';


class Categoria {
  final String nome;
  const Categoria(this.nome);
}

class BannersDeCategorias extends StatelessWidget {
  
  final List <Categoria>listacategoria;

  const BannersDeCategorias(
    {Key? key,required this.listacategoria})
    : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold), fixedSize: const Size(195, 70), primary: AppCores.vermelhoPrincipal );
    
    
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listacategoria.length,
      itemBuilder:(BuildContext context, int index){
          return Column(
            children:[
              const SizedBox(width: 4),
              Column(
                children:  [
                  ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        Row(
                         children: [
                          Text(listacategoria[index].nome)
                         ],
                        )
                      ]
                    )
                  )
                ]
              ),   
            ]
         );
      }
    );
  }
}
