import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SafeArea(child: LogoWidget()),
          const CardWidget(
            urlSvg: 'assets/7.svg',
            titleColor: Color(0xff174376),
            cardColor1: Color(0xff5EB03A),
            cardColor2: Color(0xff174376),
            title: 'BIENVENIDO',
            subTitle: 'Accede a tus cuentas de manera mas segura y rapida',
          ),
          const SizedBox(
            height: 115,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'verify');
            },
            child: const ButtonWidget(
              title: 'Comenzar',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Ya tengo una cuenta asociada',
            style: TextStyle(
                color: Color(0xff0E328D), decoration: TextDecoration.underline),
          )
        ],
      ),
    );
  }
}
