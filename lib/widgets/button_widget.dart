import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  const ButtonWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 42,
      width: 235,
      decoration: BoxDecoration(
          color: const Color(0xff6ABD45),
          borderRadius: BorderRadius.circular(8)),
      child: Text(
        title,
        style: const TextStyle(
            color: Color(0xffffffff),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
