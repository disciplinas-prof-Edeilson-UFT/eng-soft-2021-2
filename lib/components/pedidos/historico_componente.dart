import 'package:flutter/material.dart';


// classe para simular dados dinâmicos na lista
class HistoricFakeData {
  late int id;
  late String name;
  late int score;
  late List<String> items;
}

class HistoricoCard extends StatelessWidget {
  const HistoricoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // criando dados locais
    List<HistoricFakeData> histories = <HistoricFakeData>[];
    var historic = HistoricFakeData();
    historic.id = 1;
    historic.name = "Sushi do fera";
    historic.score = 5;
    historic.items = <String>[
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
      'Item 6',
      'Item 7',
      'Item 8',
      'Item 8'
    ];
    histories.add(historic);

    historic = HistoricFakeData();
    historic.id = 2;
    historic.name = "Peixaria Juvenal";
    historic.score = 2;
    historic.items = <String>['Item 5', 'Item 67', 'Item 78'];
    histories.add(historic);

    historic = HistoricFakeData();
    historic.id = 3;
    historic.name = "Pizzaria da Genoveva";
    historic.score = 1;
    historic.items = <String>['Item 45', 'Item 07', 'Item 89'];
    histories.add(historic);

    return Column(children: <Widget>[
      // gambiarra que achei pra por o texto na esquerda kkk - cria uma linha e um texto dentro
      Row(children: const <Widget>[
        Text(
          "History",
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
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              // tamanho da lista vai ser de acordo com a lista dinâmica
              itemCount: histories.length,
              // criar um lista
              itemBuilder: (BuildContext context, int index) {
                // retorna um componente qualquer, nessa casa foi um card que dentro dele tem outros components
                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.fastfood),
                        title: Text(histories[index].name),
                        /*subtitle: Text(
                          'Secondary Text',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),*/
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
                                  'Pedido Nº - ${histories[index].id}',
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
                                  itemCount: histories[index].items.length,
                                  itemBuilder: (BuildContext contextItems,
                                      int indexItems) {
                                    return Container(
                                        margin:
                                        const EdgeInsets.only(right: 10.0),
                                        child: Text(histories[index]
                                            .items[indexItems]));
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
              }))
    ]);
  }
}

