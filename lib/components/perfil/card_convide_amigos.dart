import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/components/perfil/pag_convide.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CardConvidar extends StatefulWidget {
  final User user;
  const CardConvidar({Key? key, required this.user}) : super(key: key);

  @override
  _CardConvidarState createState() => _CardConvidarState();
}

class _CardConvidarState extends State<CardConvidar>
    with SingleTickerProviderStateMixin {
  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => PageConvidar(user: _currentUser),
        ));
      },
      child: FractionallySizedBox(
        heightFactor: 0.4,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
              ),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: 35.0,
                      color: Colors.white,
                      child: Image.network('https://i.imgur.com/q3Fau41.png'),
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text('Ganhe R\$ 10 indicando o iFood',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600)),
                        Text('Convide seus amigos',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 14.0)),
                      ],
                    ),
                    const Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.chevron_right_outlined,
                        color: Colors.grey,
                      ),
                    ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
