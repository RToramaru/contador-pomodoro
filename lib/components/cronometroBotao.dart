import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  const CronometroBotao({ Key? key, required this.texto, required this.icone }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: () {},
              child:  Row(
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