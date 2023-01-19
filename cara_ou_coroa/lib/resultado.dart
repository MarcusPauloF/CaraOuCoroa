import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String valor;

  Resultado(this.valor);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    //--------------------------------------------//
    var caminhoImagem;

    if (widget.valor == "cara") {
      caminhoImagem = "image/moeda_cara.png";
    } else {
      caminhoImagem = "image/moeda_coroa.png";
    }

    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(caminhoImagem),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset("image/botao_voltar.png"),
              ),
            ],
          ),
        ));
  }
}
