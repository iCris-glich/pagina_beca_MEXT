import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Image.network(
              'https://pbs.twimg.com/media/FN_jEaxXsAcDKqO.jpg:large',
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
