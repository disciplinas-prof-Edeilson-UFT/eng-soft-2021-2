import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/utilities/cores.dart';

class CategoriaCard extends StatelessWidget {

  final List categoryList;

  const CategoriaCard({Key? key, required this.categoryList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(

            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(), // this for snapping
            itemCount: categoryList.length,
            itemBuilder: (_, index) => SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Column(children: [
                const SizedBox(height: 40),
                Container(
                  height: 40,
                  width: 90,
                  padding: const EdgeInsets.all(50),
                  decoration: const BoxDecoration(
                      color: AppCores.vermelhoPrincipal,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                const SizedBox(height: 10),

                 Text(
                  '${categoryList[index]}',
                  style: TextStyle(color: Color(0xff717171), fontSize: 14),
                )
              ]),
            )));
  }
}