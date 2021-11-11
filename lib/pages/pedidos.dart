import 'package:flutter/material.dart';

class PaginaPedidos extends StatefulWidget {
  const PaginaPedidos({Key? key}) : super(key: key);

  @override
  _PaginaPedidosState createState() => _PaginaPedidosState();
}

class _PaginaPedidosState extends State<PaginaPedidos>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Text(
        'Pedidos',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }
}
