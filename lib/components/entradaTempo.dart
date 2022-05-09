import 'package:contador_pomodoro/store/pomodoro.store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? incremento;
  final void Function()? decremento;

  const EntradaTempo(
      {Key? key,
      required this.titulo,
      required this.valor,
      this.incremento,
      this.decremento})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(titulo,
            style: TextStyle(
              fontSize: 25,
            )),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: decremento,
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: store.estaTrabalhando() ? Colors.red : Colors.green,
              ),
            ),
            Text(
              '$valor min',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              onPressed: incremento,
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: store.estaTrabalhando() ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
