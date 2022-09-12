import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class CardWidget extends StatelessWidget {
  final Color cardColor1;
  final Color cardColor2;
  final Color titleColor;
  final String title;
  final String subTitle;
  final String urlSvg;

  const CardWidget(
      {Key? key,
      required this.cardColor1,
      required this.cardColor2,
      required this.title,
      required this.subTitle,
      required this.titleColor,
      required this.urlSvg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      color: titleColor,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                height: 380,
                width: 235,
                decoration: BoxDecoration(
                    color: cardColor1, borderRadius: BorderRadius.circular(8)),
                child: Text(title, style: textStyle),
              ),
              _CardLogoWidget(
                subTitle: subTitle,
                cardColor2: cardColor2,
              ),
              Positioned(
                  top: 145,
                  child: SizedBox(
                      height: 120, width: 200, child: SvgPicture.asset(urlSvg)))
            ],
          ),
        ],
      ),
    );
  }
}

class _CardLogoWidget extends StatelessWidget {
  final Color cardColor2;
  final String subTitle;
  const _CardLogoWidget({
    Key? key,
    required this.cardColor2,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
              color: cardColor2, borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Text(
                    subTitle,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 20,
              ),
              const _CardSmallLogoWidget()
            ],
          ),
        ),
      ],
    );
  }
}

class _CardSmallLogoWidget extends StatelessWidget {
  const _CardSmallLogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color(0xffffffff), width: 2)),
    );
  }
}
