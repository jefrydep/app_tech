import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'account',
            style: TextStyle(
                color: Color(0xff174376),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'tech',
            style: TextStyle(
                color: Color(0xff6BBD45),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
