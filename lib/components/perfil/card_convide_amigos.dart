import 'package:flutter/material.dart';

class CardConvidar extends StatefulWidget {
  const CardConvidar({Key? key}) : super(key: key);

  @override
  _CardConvidarState createState() => _CardConvidarState();
}

class _CardConvidarState extends State<CardConvidar> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      child: Container(
        margin: const EdgeInsets.all(10),
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
        height: 75,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    width: 33.0,
                    color: Colors.white,
                    child: Image.network('https://i.imgur.com/q3Fau41.png'),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Ganhe R\$ 10 indicando o iFood',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600)),
                      Text('Convide seus amigos',
                          style: TextStyle(
                              color: Colors.grey[600], fontSize: 13.0)),
                    ],
                  ),
                  SizedBox(width: 35.0),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
