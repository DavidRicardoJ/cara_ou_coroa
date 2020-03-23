import 'package:caraoucoroa/Jogar.dart';
import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String resultado;
  Resultado(this.resultado);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(widget.resultado),
            GestureDetector(
              onTap: () {
                Navigator.pop(
                    context, MaterialPageRoute(builder: (context) => Jogar()));
              },
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
