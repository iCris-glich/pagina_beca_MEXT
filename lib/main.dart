import 'package:dinero_en_mano/router/go_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DineroEnMano());
}

class DineroEnMano extends StatelessWidget {
  const DineroEnMano({super.key});

  @override
  Widget build(Object context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      theme: ThemeData(
        fontFamily: 'Playfair',
      ),
    );
  }
}
