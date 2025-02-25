import 'package:dinero_en_mano/app/screens/login/list_link.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppbarCustom extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  const AppbarCustom({super.key, required this.title});

  @override
  _AppbarCustomState createState() => _AppbarCustomState();

  @override
  Size get preferredSize => const Size.fromHeight(160);
}

class _AppbarCustomState extends State<AppbarCustom> {
  static const Color primaryColor = Color.fromARGB(255, 27, 50, 103);
  static const Color textColor = Colors.white;

  void oponeLink(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'No se puedo abrir el enlace $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return PreferredSize(
      preferredSize: const Size.fromHeight(160),
      child: AppBar(
        flexibleSpace: _buildBackgroundImage(),
        title: _buildTitle(),
        actions: _buildActions(widthScreen),
        bottom: widthScreen > 1260 ? _buildBottomBar() : null,
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://www.shutterstock.com/image-photo/relations-between-japan-guatemala-vs-260nw-2327135957.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildTitle() {
    final widthScreen = MediaQuery.of(context).size.width;

    return Row(
      children: [
        InkWell(
          onTap: () {
            oponeLink('https://es.wikipedia.org/wiki/Japón');
          },
          child: Image.network(
            'https://media.istockphoto.com/id/537287287/es/vector/bandera-de-jap%C3%B3n.jpg?s=612x612&w=0&k=20&c=xKOo9ietYR8GcKhppVkZrrC_osNmIrTBtqdtkbtuvtA=',
            width: 50,
            height: 30,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () {
            oponeLink(
                'https://www.gt.emb-japan.go.jp/itpr_es/sobre_embajada.html');
          },
          child: Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: widthScreen < 650 ? 13 : 18,
              fontFamily: 'Playfair',
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildActions(double widthScreen) {
    return [];
  }

  PreferredSizeWidget? _buildBottomBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(40),
      child: Container(
        height: 40,
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildBottomButton('Tópicos Recientes', () {
              openLink('https://www.gt.emb-japan.go.jp/itprtop_es/index.html');
            }),
            _buildBottomButton('Relaciones Bilaterales', () {
              openLink(
                  'https://www.gt.emb-japan.go.jp/itpr_es/relaciones_bilaterales.html');
            }),
            _buildBottomButton('Visitar Japón', () {
              openLink(
                  'https://www.gt.emb-japan.go.jp/itpr_es/visita_japon.html');
            }),
            _buildBottomButton('Cultura y Educación', () {
              openLink(
                  'https://www.gt.emb-japan.go.jp/itpr_es/cultura_educacion_rrpp.html');
            }),
            _buildBottomButton('Politica Exterior de Japón', () {
              openLink(
                  'https://www.gt.emb-japan.go.jp/itpr_es/politica_exterior.html');
            }),
            _buildBottomButton('Información de Japón', () {
              openLink(
                  'https://www.gt.emb-japan.go.jp/itpr_es/info_japon.html');
            }),
            _buildBottomButton('Sobre la Embajada', () {
              openLink(
                  'https://www.gt.emb-japan.go.jp/itpr_es/sobre_embajada.html');
            }),
            _buildBottomButton('Enlaces', () {
              openLink('https://www.gt.emb-japan.go.jp/itpr_es/enlaces.html');
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButton(String text, VoidCallback callback) {
    return TextButton(
      onPressed: () {
        callback();
      },
      child: Text(
        text,
        style: const TextStyle(
          color: textColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
