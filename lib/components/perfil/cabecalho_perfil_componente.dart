import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TopoPagina extends StatefulWidget {
  final User user;

  const TopoPagina({Key? key, required this.user}) : super(key: key);

  @override
  _TopoPaginaState createState() => _TopoPaginaState();
}

class _TopoPaginaState extends State<TopoPagina>
    with SingleTickerProviderStateMixin {
  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 10, bottom: 50),
            child: Image.network(
              "https://imgur.com/EPUWxPP.png",
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 16, bottom: 50),
            child: Text(
              '${_currentUser.displayName}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
              icon: const Icon(
                Icons.qr_code_scanner_outlined,
              ),
              padding: const EdgeInsets.only(left: 120),
              alignment: Alignment.topLeft,
              color: Colors.red,
              onPressed: () {}),
        ],
      ),
    );
  }
}
