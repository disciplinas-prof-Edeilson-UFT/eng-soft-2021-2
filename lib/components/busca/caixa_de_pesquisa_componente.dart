import 'package:flutter/material.dart';

class MecanismodeBusca extends StatefulWidget {
  const MecanismodeBusca({Key? key}) : super(key: key);

  @override
  _MecanismodeBusca createState() => _MecanismodeBusca();
}

class _MecanismodeBusca extends State<MecanismodeBusca> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[100],
                  ),
                  child: TextField(
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                            left: 20, top: 15, right: 20, bottom: 15),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Icon(
                            Icons.search,
                            color: Colors.redAccent[700],
                          ),
                        ),
                        hintText: 'Item ou loja',
                        hintStyle:
                            const TextStyle(fontSize: 18, color: Colors.grey),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
