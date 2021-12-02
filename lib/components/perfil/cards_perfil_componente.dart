import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Opcoes {
  final String nomeArea;
  final String desc;
  final Icon icon;

  const Opcoes(this.nomeArea, this.desc, this.icon);
}

class OpcoesPerfil extends StatelessWidget {
  final List<Opcoes> opcoespefils;

  const OpcoesPerfil({Key? key, required this.opcoespefils}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: opcoespefils.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 15.0),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          opcoespefils[index].icon,
                          Padding(
                            padding: const EdgeInsets.only(left: 13.0),
                            child: Text(
                              opcoespefils[index].nomeArea + "\n\n",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.black87),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Text(
                                  opcoespefils[index].desc,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.black54),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios_sharp,
                              color: Colors.black38, size: 19),
                        ],
                      ),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          color: Colors.black12,
                          width: 0.6,
                        ),
                      )),
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
