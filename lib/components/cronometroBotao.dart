import 'package:contador_pomodoro/store/pomodoro.store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CronometroBotao extends StatelessWidget {
  final void Function()? click;
  final String texto;
  final IconData icone;
  const CronometroBotao(
      {Key? key, required this.texto, required this.icone, this.click})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icone,
              color: Colors.white,
              size: 35,
            ),
          ),
          Text(texto)
        ],
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        primary: Colors.black,
        textStyle: TextStyle(fontSize: 25),
      ),
    );
  }
}
