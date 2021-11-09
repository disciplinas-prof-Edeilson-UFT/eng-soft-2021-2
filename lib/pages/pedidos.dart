import 'package:flutter/material.dart';

class PaginaPedidos extends StatefulWidget {
  const PaginaPedidos({Key? key}) : super(key: key);

  @override
  _PaginaPedidosState createState() => _PaginaPedidosState();
}

class _PaginaPedidosState extends State<PaginaPedidos>
    with SingleTickerProviderStateMixin {
  @override
  /*Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        'Pedidos',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }
 */

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar:AppBar(
          title: Text("Meus Pedidos"),
          backgroundColor: Colors.red,

        ),
        body: buildListView(),

      ),

    );

  }


  buildListView() {
    return ListView(
      children: <Widget> [

        ListTile(
          leading: Icon(Icons.add_location),
          title: Text("Loja 01"),
          subtitle: Text("Pedido 01\nNota: 09"),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: (){

          },
        ),

        ListTile(
          leading: Icon(Icons.add_location),
          title: Text("Loja 02"),
          subtitle: Text("Pedido 02\nNota: 10"),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: (){

          },
        ),

        ListTile(
          leading: Icon(Icons.add_location),
          title: Text("Loja 03"),
          subtitle: Text("Pedido 03\nNota: 02"),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: (){

          },
        ),

      ],
    );

  }



}
