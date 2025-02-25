import 'package:dinero_en_mano/app/screens/login/a.dart';
import 'package:dinero_en_mano/app/screens/login/b.dart';
import 'package:dinero_en_mano/app/screens/login/c.dart';
import 'package:dinero_en_mano/app/screens/login/list_link.dart';
import 'package:dinero_en_mano/app/screens/login/resquet.dart';
import 'package:dinero_en_mano/app/screens/login/text.dart';
import 'package:dinero_en_mano/widget/drawer_custom.dart';

import 'package:flutter/gestures.dart'; // Import necesario para TextSpan clickeable
import 'package:flutter/material.dart';
import 'package:dinero_en_mano/widget/appBar_custom.dart';
import 'package:url_launcher/url_launcher.dart'; // Import para abrir enlaces

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  final String text =
      '【CONVOCATORIA】Programa de Becas para Maestros 2025 por el Ministerio de Educación, Cultura, Deportes, Ciencia y Tecnología del Japón (Monbukagakusho: MEXT)';

  void openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'No se pudo abrir el enlace: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppbarCustom(
        title: '''Embajada de Japón en Guatemala 
在グアテマラ日本国大使館''',
      ),
      drawer: widthScreen < 1250 ? DrawerCustom() : null,
      body: Container(
        padding: widthScreen > 1250
            ? const EdgeInsets.all(25)
            : const EdgeInsets.all(10),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 27, 50, 103),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: widthScreen > 1250 ? 25 : 18,
                    color: Colors.white,
                    fontFamily: 'Playfair',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 100),
              Text(text1),
              const SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  text: 'Leer detenidamente la guía en la página. ',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(
                      text: listLink[0], // Enlace
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          openLink(listLink[0]);
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Text(text2),
              const SizedBox(height: 20),
              Resquet(),
              const SizedBox(height: 20),
              A(),
              const SizedBox(height: 20),
              B(),
              const SizedBox(height: 20),
              C(),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Text(text6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
