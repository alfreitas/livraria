import 'package:flutter/material.dart';
import 'package:livraria/models/livro.dart';

class EditarLivro extends StatelessWidget {
  Livro livro;
  final _formKey = GlobalKey<FormState>();
  //EditarLivro({this.livro})

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Livros"),
        ),
        body: new Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  )
                ])),
        floatingActionButton:
            new FloatingActionButton(onPressed: null, child: Icon(Icons.add)));
  }
}
