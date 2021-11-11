import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Button(text: 'Restaurante'),
          Button(text: 'Mercado'),
          Button(text: 'Bebidas'),
          Button(text: 'Farmácia')
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  Button({this.text});

  var text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      // ignore: deprecated_member_use
      child: FlatButton(
          onPressed: () {},
          child: Text(text,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey))),
    );
  }
}
