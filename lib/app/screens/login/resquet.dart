import 'package:dinero_en_mano/app/screens/login/text.dart';
import 'package:flutter/material.dart';

class Resquet extends StatelessWidget {
  const Resquet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 27, 50, 103),
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
          children: [
            Text(
              request,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
