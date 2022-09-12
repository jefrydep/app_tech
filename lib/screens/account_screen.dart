import 'package:flutter/material.dart';
import 'package:prueba/widgets/account_widget.dart';

import '../widgets/widgets.dart'; // import 'package:prueba/widgets/logo_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        elevation: 0,
        title: LogoWidget(),
      ),
      body: Column(
        children: [
          AccountWidget(),
          AccountWidget(),
          AccountWidget(),
          SizedBox(
            height: 20,
          ),
          _CloseButton()
        ],
      ),
    );
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void displayDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('¿Quieres aprobar el inicion de secion?'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text('Jefry Palomino'),
                  Text(
                    'jefrydep@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffE32626),
                            borderRadius: BorderRadius.circular(3)),
                        child: Icon(
                          Icons.add,
                          size: 45,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(3)),
                        child: Icon(
                          Icons.check,
                          size: 45,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          });
    }

    return GestureDetector(
      onTap: () {
        displayDialog(context);
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.add,
          size: 45,
          color: Colors.white,
        ),
      ),
    );
  }
}
