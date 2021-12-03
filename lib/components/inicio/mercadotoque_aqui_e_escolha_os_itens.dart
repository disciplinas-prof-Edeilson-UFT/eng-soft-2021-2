import 'package:flutter/material.dart';

class CardEscolha extends StatefulWidget {
  const CardEscolha({Key? key}) : super(key: key);

  @override
  _CardEscolhaState createState() => _CardEscolhaState();
}

class _CardEscolhaState extends State<CardEscolha> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.6,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.red[50],
          borderRadius: BorderRadius.circular(7)
        ),
        child: Container(
           padding: const EdgeInsets.all(2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
               children: [
                  Container(
                    width: 80.0,
                    color: Colors.red[50],
                    child: Image.network(
                        'https://imgur.com/qT0sNRd.png'),
                  ),
                  SizedBox(width: 6.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                        decoration: BoxDecoration(
                            color: Colors.yellow[700],
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: Text('NOVO',
                            style: TextStyle(
                                color: Colors.white, fontSize: 10)),
                      ),
                      Text('Toque aqui e escolha os itens',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600)),

                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text('Depois te ajudamos a selecionar a loja',
                            style: TextStyle(
                                color: Colors.redAccent, fontSize: 12.0)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:4),
                    child: Icon(
                      Icons.chevron_right_outlined,
                      color: Colors.redAccent,
                    ),
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