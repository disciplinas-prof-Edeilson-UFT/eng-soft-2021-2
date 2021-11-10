import 'package:flutter/material.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.black54)),
              color: Colors.white,
              textColor: Colors.black54,
              padding: EdgeInsets.all(8.0),
              onPressed: () {},
              child: Text(
                "Ordenar",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.black54)),
              color: Colors.white,
              textColor: Colors.black54,
              padding: EdgeInsets.all(8.0),
              onPressed: () {},
              child: Text(
                "Entrega Grátis",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.black54)),
              color: Colors.white,
              textColor: Colors.black54,
              padding: EdgeInsets.all(8.0),
              onPressed: () {},
              child: Text(
                "Para retirar",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.black54)),
              color: Colors.white,
              textColor: Colors.black54,
              padding: EdgeInsets.all(8.0),
              onPressed: () {},
              child: Text(
                "Filtros",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
