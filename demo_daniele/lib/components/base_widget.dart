// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print

import 'package:demo_daniele/models/daniele_model.dart';
import 'package:flutter/material.dart';

class FirstDanieleWidget extends StatefulWidget {
  // Definire costruttore della classe con i parametri che ci servono
  FirstDanieleWidget(
      {Key? key, required this.stringDiDaniele, required this.danieleColor})
      : super(key: key);

  // Creare contenitore per il parametro
  String stringDiDaniele;
  Color danieleColor;
  @override
  State<StatefulWidget> createState() {
    return _FirstDanieleWidgetState();
  }
}

class _FirstDanieleWidgetState extends State<FirstDanieleWidget> {
  late Color myWidgetColor;
  DanieleModel modelloDiDaniele = new DanieleModel(nome: "daniele", eta: 26);
  void initState() {
    myWidgetColor = widget.danieleColor;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Chiamato con:" + widget.stringDiDaniele);
        setState(() {});
      },
      child: Container(
        width: 150,
        height: 150,
        alignment: Alignment.center,
        margin:
            const EdgeInsets.only(left: 10.0, right: 10.0, top: 10, bottom: 10),
        // Vedi il BoxDecoration come uno StyleSheet dove attribuisci shadow ecc ecc
        decoration: BoxDecoration(
          color: myWidgetColor,
          boxShadow: [
            BoxShadow(
              color: myWidgetColor.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        // Usare widget.{valore} per accedere ad un parametro passato da un Widget padre
        child: Text(widget.stringDiDaniele,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            )),
      ),
    );
  }
}
