import 'package:flutter/material.dart';

class CardConvidar extends StatefulWidget {
  const CardConvidar({Key? key}) : super(key: key);

  @override
  _CardConvidarState createState() => _CardConvidarState();
}

class _CardConvidarState extends State<CardConvidar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 30.0,
                        height: 30.0,
                        color: Colors.white,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/1140/1140033.png"),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Ganhe R10 indicando o iFood',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600)),
                          Text('Convide seus amigos',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 11.0)),
                        ],
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
