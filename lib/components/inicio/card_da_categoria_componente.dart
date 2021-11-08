import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class CategoriaCard extends StatelessWidget {
  const CategoriaCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return CustomScrollView(physics: BouncingScrollPhysics(),slivers: [Text('teste')],) ;
  }

}