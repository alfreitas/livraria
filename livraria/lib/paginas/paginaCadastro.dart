import 'package:flutter/material.dart';
import 'package:livraria/models/genero.dart';
import 'package:livraria/models/livro.dart';
import 'package:livraria/paginas/editarLivro.dart';
import 'package:livraria/util/Navegador.dart';
import 'package:livraria/widgets/listaComFiltro.dart';

class PaginaCadastro extends StatelessWidget {
  var items = new List<Livro>();

  PaginaCadastro() {
    items.add(Livro(
        genero: Genero(descricao: "Romance"),
        nome: "Livro A",
        quantidade: 1,
        id: 1));
    items.add(Livro(
        genero: Genero(descricao: "Financeiro"),
        nome: "Livro B",
        quantidade: 1,
        id: 1));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Livros"),
        ),
        body: new ListaComFiltro(itens: items),
        floatingActionButton: new FloatingActionButton(
            onPressed: () {
              Navegador.irPara(context, new EditarLivro(),false);
            },
            child: Icon(Icons.add)));
  }
}
