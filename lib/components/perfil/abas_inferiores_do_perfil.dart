import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class AbaInfCard extends StatelessWidget {
  const AbaInfCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 370,
            alignment: Alignment.bottomLeft,
            child: Row(
              children: const <Widget>[
                Icon(Icons.help_outline, color: Colors.black38,),
                Text(' Ajuda', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19, color: Colors.black45),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp, color: Colors.black38,),
              ],

            ),
            decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black26, width: 1,),
                )
            ),
            padding: const EdgeInsets.only(bottom: 20, top: 20),
          ),

          Container(
            width: 370,
            alignment: Alignment.bottomLeft,
            child: Row(
              children: const <Widget>[
                Icon(Icons.settings, color: Colors.black38,),
                Text(' Configurações', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19, color: Colors.black45),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp, color: Colors.black38,),
              ],

            ),
            decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black26, width: 1,),
                )
            ),
            padding: const EdgeInsets.only(bottom: 20, top: 20),
          ),

          Container(
            width: 370,
            alignment: Alignment.bottomLeft,
            child: Row(
              children: const <Widget>[
                Icon(Icons.security, color: Colors.black38,),
                Text(' Segurança', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19, color: Colors.black45),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp, color: Colors.black38,),
              ],

            ),
            decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black12, width: 1,),
                )
            ),
            padding: const EdgeInsets.only(bottom: 20, top: 20),
          ),

          Container(
            width: 370,
            alignment: Alignment.bottomLeft,
            child: Row(
              children: const <Widget>[
                Icon(Icons.qr_code, color: Colors.black38,),
                Text(' Usar no carro', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19, color: Colors.black45),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp, color: Colors.black38,),
              ],

            ),
            decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black12, width: 1,),
                )
            ),
            padding: const EdgeInsets.only(bottom: 20, top: 20),
          ),

          Container(
            width: 370,
            alignment: Alignment.bottomLeft,
            child: Row(
              children: const <Widget>[
                Icon(Icons.add_business_outlined, color: Colors.black38,),
                Text(' Sugerir restaurantes', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19, color: Colors.black45),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp, color: Colors.black38,),
              ],

            ),
            decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black26, width: 1,),
                )
            ),
            padding: const EdgeInsets.only(bottom: 20, top: 20),
          ),

        ],
      ),
    );
  }
}





