import 'package:dinero_en_mano/app/screens/login/list_link.dart';
import 'package:dinero_en_mano/app/screens/login/text.dart';

import 'package:flutter/material.dart';

class B extends StatelessWidget {
  const B({super.key});

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
            Text(text4),
            Text('1. Guía: '),
            GestureDetector(
              onTap: () => openLink(
                listLink2[0],
              ),
              child: Text(
                listLink2[0],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('2.  Formulario para aplicar: '),
            GestureDetector(
              onTap: () => openLink(
                listLink2[1],
              ),
              child: Text(
                listLink2[1],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text(
                '3.  Especialidades y Materias Relacionadas para Campos de Estudio '),
            GestureDetector(
              onTap: () => openLink(
                listLink2[2],
              ),
              child: Text(
                listLink2[2],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('4.  Ejemplo de carta de recomendación: '),
            GestureDetector(
              onTap: () => openLink(
                listLink2[3],
              ),
              child: Text(
                listLink2[3],
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('5.  Ejemplos de exámenes: '),
            GestureDetector(
              onTap: () => openLink(
                listLink2[4],
              ),
              child: Text(
                listLink2[4],
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
