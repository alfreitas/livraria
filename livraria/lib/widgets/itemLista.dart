import 'package:flutter/material.dart';

class ItemLista extends StatelessWidget {
  String nome;

  ItemLista({this.nome});
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new ListTile(
          leading: new CircleAvatar(
              backgroundColor: Colors.cyan,
              child: new Text(nome.substring(0, 1))),
          title: new Text(nome)),
    );
  }
}
