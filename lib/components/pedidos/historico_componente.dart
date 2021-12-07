import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ifood_engenharia_de_software/models/historico_model.dart';



class HistoricoCard extends StatelessWidget {
  const HistoricoCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return Column(children: <Widget>[
      // gambiarra que achei pra por o texto na esquerda kkk - cria uma linha e um texto dentro
      Row(children: const <Widget>[
        Text(
          "Histórico",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'RobotoMono'),
        ),
      ]),
      // expande pra preencher o espaço
      Expanded(
          // cria uma lista de acordo com a lista dinâmica histories
          child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: FirebaseFirestore.instance
                .collection('historico_compras')
                .orderBy("id")
                .snapshots(),
            builder: (_, snapshot) {
              if (snapshot.hasError) return Text('Error = ${snapshot.error}');

              if (snapshot.hasData) {
                final docs = snapshot.data!.docs;
                return ListView.builder(
                    padding: const EdgeInsets.all(8),
                    // tamanho da lista vai ser de acordo com a lista dinâmica
                    itemCount: docs.length,
                    // criar um lista
                    itemBuilder: (_, index) {
                      final data = docs[index].data();
                      var historic = Historico.fromMap(data);

                      // retorna um componente qualquer, nessa casa foi um card que dentro dele tem outros components
                      return Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.fastfood),
                              title: Text(historic.nome_loja),
                            ),
                            // cria uma view com espaçamentos
                            Padding(
                                padding: const EdgeInsets.all(16.0),
                                // cria uma coluna que vai conter o numero do pedido e a lista dos itens
                                child: Column(
                                  // children recebe uma lista de componentes, por isso consegui por 2 componentes (Align e Container). E cada um dele tem mais componentes.
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Pedido Nº - ${historic.id}',
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.6)),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(top: 10.0),
                                      height: 50.00,
                                      // cria a lista dinâmica relacionado a lista dentro da lista fake
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: historic.itens.length,
                                        itemBuilder: (_, index) {
                                          return Container(
                                              margin: const EdgeInsets.only(
                                                  right: 10.0),
                                              child: Text(historic.itens[index]));
                                        },
                                      ),
                                    )
                                  ],
                                )),
                            // os botoes vermelho em baixo do card
                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    // Perform some action
                                  },
                                  child: const Text('Ajuda'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Perform some action
                                  },
                                  child: const Text('Adicionar à sacola'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    });
              }

              return const Center(child: CircularProgressIndicator());
            },
          )),
    ]);
  }
}
