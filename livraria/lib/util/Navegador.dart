import 'package:flutter/material.dart';

class Navegador {
  static void irPara(
      BuildContext contexto, Widget paginaDestino, bool limparUltimaAcao) {
    if (limparUltimaAcao) Navigator.of(contexto).pop();
    //Navigator.of(context).pushNamed("/a");
    Navigator.of(contexto).push(new MaterialPageRoute(
        builder: (BuildContext context) => paginaDestino));
  }
}
