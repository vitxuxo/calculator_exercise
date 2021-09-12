// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables

// ignore: import_of_legacy_library_into_null_safe
import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculadora_exercicio_pedro/widgets/buttons_widgets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int? numero1;

  int? numero2;

  String? text;

  late String res;

  String? operation;

  String textDisplay = '';

  void btnClick(String? btnValor) {
    if (btnValor == "AC") {
      numero1 = 0;
      numero2 = 0;
      text = "";
      res = "";
    } else if (btnValor == "+" ||
        btnValor == "-" ||
        btnValor == "*" ||
        btnValor == "/") {
      numero1 = int.parse(textDisplay);
      res = "";
      operation = btnValor;
    } else if (btnValor == "=") {
      numero2 = int.parse(textDisplay);
      if (operation == "+") {
        res = (numero1! + numero2!).toString();
      }
      if (operation == "-") {
        res = (numero1! - numero2!).toString();
      }
      if (operation == "*") {
        res = (numero1! * numero2!).toString();
      }
      if (operation == "**") {
        res = (pow(numero1!, numero2!)).toString();
      }
      if (operation == "/") {
        res = (numero1! / numero2!).toString();
      }
      if (operation == "%") {
        res = ((numero1! / 100)).toString();
      }
    } else {
      res = int.parse(textDisplay + btnValor!).toString();
    }
    setState(() {
      textDisplay = res;
    });
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black38,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: AutoSizeText(
                    textDisplay.toString(),
                    minFontSize: 40.0,
                    maxFontSize: 100.0,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  child: Buttons(text: "AC", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Buttons(text: "**", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Buttons(text: "%", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: Buttons(text: "/", callbacks: btnClick),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  child: Buttons(text: "7", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Buttons(text: "8", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Buttons(text: "9", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: Buttons(text: "*", callbacks: btnClick),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  child: Buttons(text: "4", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Buttons(text: "5", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Buttons(text: "6", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: Buttons(text: "-", callbacks: btnClick),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  child: Buttons(text: "1", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Buttons(text: "2", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Buttons(text: "3", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: Buttons(text: "+", callbacks: btnClick),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  child: Buttons(text: "Ch", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Buttons(text: "0", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Buttons(text: ".", callbacks: btnClick),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: Buttons(text: "=", callbacks: btnClick),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
