import 'package:dinero_en_mano/app/screens/login/list_link.dart';
import 'package:dinero_en_mano/app/screens/login/text.dart';

import 'package:flutter/material.dart';

class A extends StatelessWidget {
  const A({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurStyle: BlurStyle.outer,
              blurRadius: 7,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(text3),
            Text('1. Guía: '),
            GestureDetector(
              onTap: () => openLink(
                listLink[1],
              ),
              child: Text(
                listLink[1],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('2.  Formulario para aplicar: '),
            GestureDetector(
              onTap: () => openLink(
                listLink[2],
              ),
              child: Text(
                listLink[2],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('3.  Ejemplo de carta de recomendación: '),
            GestureDetector(
              onTap: () => openLink(
                listLink[3],
              ),
              child: Text(
                listLink[3],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('4. Ejemplos de exámenes: '),
            GestureDetector(
              onTap: () => openLink(
                listLink[4],
              ),
              child: Text(
                listLink[4],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
