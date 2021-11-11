import 'package:flutter/material.dart';

class FiltrosCategoria extends StatefulWidget {
  const FiltrosCategoria({Key? key}) : super(key: key);

  @override
  _FiltrosCategoriaState createState() => _FiltrosCategoriaState();
}

class _FiltrosCategoriaState extends State<FiltrosCategoria> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 54,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
          children: [
            SizedBox( width: 16, ),
            FilterItemComponent(label: 'Ordenar'),
            FilterItemComponent(label: 'Pra retirar'),
            FilterItemComponent(label: 'Entraga grátis'),
            FilterItemComponent(label: 'Vale-refeição'),
            FilterItemComponent(label: 'Distância'),
            FilterItemComponent(label: 'Entrega Parceira'),
            FilterItemComponent(label: 'Super Restaurante'),
            FilterItemComponent(label: 'Filtros'),
          ],
      ),
    );
  }
}

class FilterItemComponent extends StatelessWidget {

  final String label;
  const FilterItemComponent({Key? key, required this.label,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 14, right: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Text(
                label,
                style:TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}