import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/controllers/pesquisa_controller.dart';
import 'package:get/get.dart';
import 'package:ifood_engenharia_de_software/app_store.dart';
import 'package:ifood_engenharia_de_software/components/busca/banner_de_categoria_componente.dart';


class MecanismodeBusca extends StatefulWidget {
  
  const MecanismodeBusca({Key? key }) : super(key: key);
  @override
  _MecanismodeBusca createState() => _MecanismodeBusca();
}

class _MecanismodeBusca extends State<MecanismodeBusca> {
  final TextEditingController searchController = TextEditingController();
  late QuerySnapshot snapshotData;
  bool isExecuted = false;
  bool search = false;
  @override
  Widget build(BuildContext context) {
    Widget searchedData() {
      return ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemExtent: 140.0,
        itemCount: snapshotData.docs.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 60,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 15),
            child: Card(
              child: ListTile(
                onTap: () {},
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        alignment: const Alignment(-0.95, -1.6),
                        child: Text(
                          snapshotData.docs[index]['nome'],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                minVerticalPadding: 40,
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(snapshotData.docs[index]['img_url']),
                  maxRadius: 30,
                ),
              ),
            ),
          );
        },
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.grey[100],
        actions: [
          GetBuilder<DadosController>(
              init: DadosController(),
              builder: (val) {
                return !search
                    ? IconButton(
                        color: Colors.redAccent,
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          val.Consulta(searchController.text).then((value) {
                            snapshotData = value;
                            setState(() {
                              isExecuted = true;
                              search = !search;
                            });
                          });
                        },
                      )
                    : TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.redAccent,
                        ),
                        child: const Text(
                          'Cancelar',
                          style:
                              TextStyle(color: Colors.redAccent, fontSize: 15),
                        ),
                        onPressed: () {
                          setState(() {
                            isExecuted = false;
                            search = !search;
                          });
                        },
                      );
              }),
        ],
        title: TextField(
          style: const TextStyle(color: Colors.black),
          decoration: const InputDecoration(
            hintText: 'Pesquisar loja',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
          controller: searchController,
          textInputAction: TextInputAction.search,
        ),
      ),
      body: isExecuted
          ? searchedData()
          : SingleChildScrollView(
              child: Column(children: [
                const Padding(padding: EdgeInsets.all(20.0)),
                
               const Align(
          alignment: Alignment.topLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 20, bottom: 30),
              child: Text(
                'Categorias',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ))),
      AnimatedBuilder(
          animation: appStore,
          builder: (_, __) {
            return SizedBox(
                width: 390,
                child: BannersDeCategorias(
                    listacategoria:
                        appStore.state.bannerdecategoriaData.listacategoria));
                  })
              ]),
            ),
    );
  }
}
