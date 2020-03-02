import 'package:livraria/models/filtroModel.dart';

import 'genero.dart';

class Livro extends FiltroModel {
  int id;
  String nome;
  Genero genero;
  int quantidade;

  Livro({this.id, this.nome, this.genero, this.quantidade});

  Livro.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    genero =
        json['genero'] != null ? new Genero.fromJson(json['genero']) : null;
    quantidade = json['quantidade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    if (this.genero != null) {
      data['genero'] = this.genero.toJson();
    }
    data['quantidade'] = this.quantidade;
    return data;
  }

  @override
  getDescricao() {
    return nome;
  }
}
