import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriaCard extends StatelessWidget {
  const CategoriaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        )
      ],
    );
  
  }
}
