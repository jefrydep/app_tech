import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SafeArea(
          child: LogoWidget(),
        ),
        const CardWidget(
          urlSvg: 'assets/2.svg',
          titleColor: Color(0xff6ABD45),
          cardColor1: Color(0xff143B68),
          cardColor2: Color(0xff6ABD45),
          title: 'Vincula tu cuenta',
          subTitle:
              'Configura tu cuenta mediante un codigo QR o con un codigo de activasion',
        ),
        const SizedBox(
          height: 50,
        ),
        GestureDetector(
            onTap: () async {
              String barcodeScanRes;

              barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                  '#3D8BEF', 'Cancelar', true, ScanMode.QR);
            },
            child: const ButtonWidget(title: 'Escanear Codigo QR')),
        const SizedBox(
          height: 30,
        ),
        const _AtivateButton()
      ],
    ));
  }
}

class _AtivateButton extends StatelessWidget {
  const _AtivateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'account');
      },
      child: Container(
        alignment: Alignment.center,
        height: 42,
        width: 235,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 3, color: const Color(0xff6ABD45))),
        child: const Text(
          'Usar Codigo de activacion',
          style:
              TextStyle(color: Color(0xff6ABD45), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
