import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class TopoPagina extends StatefulWidget {
  const TopoPagina({Key? key}) : super(key: key);

  @override
  _TopoPaginaState createState() => _TopoPaginaState();
}

class _TopoPaginaState extends State<TopoPagina> {

  String ticket = '';
  List<String> tickets = [];

  readQRCode() async {
    String code = await FlutterBarcodeScanner.scanBarcode(
      "#FFFFFF",
      "Cancelar",
      true,
      ScanMode.QR,
    );
    setState(() => ticket = code != '-1' ? code : 'Não validado');

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      child: Row(

      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Padding(
          padding: const EdgeInsets.only(top: 45, left: 10, bottom: 60),
          child: Image.network(
            "https://imgur.com/EPUWxPP.png",
            height: 50,
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(top: 60, left: 16, bottom: 50),
          child: Text(
            //Exemplo nome, podendo utilizar uma funacao para recupera nome usuario
            "Vinicius de Oliveira",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        
       Padding(
            padding: const EdgeInsets.only(left: 110, bottom: 35),
            child: IconButton(
                icon: const Icon(
                  Icons.qr_code_scanner_outlined,
                ),
                alignment: Alignment.topLeft,
                color: Colors.red,
                onPressed:readQRCode
            ),
          ),
      ],
      )
    );
  }
}
