import 'package:flutter/material.dart';

class HistoricoCard extends StatelessWidget {
  const HistoricoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.add_location),
          title: Text("Loja 01"),
          subtitle: Text("Pedido 01\nNota: 09"),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.add_location),
          title: Text("Loja 02"),
          subtitle: Text("Pedido 02\nNota: 10"),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.add_location),
          title: Text("Loja 03"),
          subtitle: Text("Pedido 03\nNota: 02"),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {},
        ),
      ],
    );
  }
}
