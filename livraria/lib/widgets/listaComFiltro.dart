import 'package:flutter/material.dart';
import 'package:livraria/models/filtroModel.dart';

import 'itemLista.dart';

class ListaComFiltro<T extends FiltroModel> extends StatefulWidget {
  List<T> itens;

  ListaComFiltro({this.itens});

  @override
  _ListaComFiltroState createState() => _ListaComFiltroState();
}

class _ListaComFiltroState<T extends FiltroModel>
    extends State<ListaComFiltro<T>> {
  TextEditingController controller = new TextEditingController();

  String filter;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  initState() {
    controller.addListener(() {
      setState(() {
        filter = controller.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
        child: new Column(children: <Widget>[
      new Padding(
        padding: new EdgeInsets.only(top: 20.0),
      ),
      new TextField(
        decoration: new InputDecoration(labelText: "Buscar"),
        controller: controller,
      ),
      new Expanded(
          child: new ListView.builder(
              itemCount: widget.itens.length,
              itemBuilder: (BuildContext context, int index) {
                return filter == null || filter == ""
                    ? new ItemLista(nome: widget.itens[index].getDescricao())
                    : widget.itens[index].getDescricao().contains(filter)
                        ? ItemLista(nome: widget.itens[index].getDescricao())
                        : new Container();
              }))
    ]));
  }
}
