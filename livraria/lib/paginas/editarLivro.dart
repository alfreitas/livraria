import 'package:flutter/material.dart';
import 'package:livraria/models/livro.dart';

class EditarLivro extends StatelessWidget {
  Livro livro;

  //EditarLivro({this.livro})

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Livros"),
        ),
        body: null,
        floatingActionButton:
            new FloatingActionButton(onPressed: null, child: Icon(Icons.add)));
  }
}
