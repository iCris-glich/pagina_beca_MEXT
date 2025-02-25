import 'package:dinero_en_mano/app/screens/login/list_link.dart';
import 'package:dinero_en_mano/app/screens/login/text.dart';

import 'package:flutter/material.dart';

class C extends StatelessWidget {
  const C({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
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
            Text(text5),
            Text('1. Guía: '),
            GestureDetector(
              onTap: () => openLink(
                listLink3[0],
              ),
              child: Text(
                listLink3[0],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('2.  Formulario para aplicar: '),
            GestureDetector(
              onTap: () => openLink(
                listLink3[1],
              ),
              child: Text(
                listLink3[1],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('3. Formulario de preferencia de universidad: '),
            GestureDetector(
              onTap: () => openLink(
                listLink3[2],
              ),
              child: Text(
                listLink3[2],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('4.  Campo de Estudio y Plan de Investigación: '),
            GestureDetector(
              onTap: () => openLink(
                listLink3[3],
              ),
              child: Text(
                listLink3[3],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('5.  Ejemplo de carta de recomendación: '),
            GestureDetector(
              onTap: () => openLink(
                listLink3[4],
              ),
              child: Text(
                listLink3[4],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('6.  Ejemplos de exámenes anteriores: '),
            GestureDetector(
              onTap: () => openLink(
                listLink3[5],
              ),
              child: Text(
                listLink3[5],
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
