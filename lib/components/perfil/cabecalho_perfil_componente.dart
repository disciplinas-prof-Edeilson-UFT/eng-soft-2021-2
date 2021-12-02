import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';
import 'package:ifood_engenharia_de_software/models/cabecalho_perfil_model.dart';

class TopoPagina extends StatefulWidget {
  final User user;

  const TopoPagina({Key? key, required this.user}) : super(key: key);

  @override
  _TopoPaginaState createState() => _TopoPaginaState();
}

class _TopoPaginaState extends State<TopoPagina>
    with SingleTickerProviderStateMixin {
  late User _currentUser;

  String ticket = '';
  List<String> tickets = [];

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

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
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 45, right: 20),
              child: Image.network(
                "https://imgur.com/EPUWxPP.png",
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45, right: 20, bottom: 30),
              child: Text(
                '${_currentUser.displayName}',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    icon: const Icon(
                      Icons.qr_code_scanner_outlined,
                      size: 25,
                    ),
                    color: AppCores.vermelhoPrincipal,
                    onPressed: readQRCode),
              ),
            ),
          ],
        ));
  }
}

/**
Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 45, right: 20),
              child: Image.network(
                "https://imgur.com/EPUWxPP.png",
                height: 50,
              ),
            ),

*/