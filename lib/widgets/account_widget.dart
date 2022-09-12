import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                  color: Color(0xff174376),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Positioned(
              left: 42,
              right: 25,
              child: Container(
                height: 140,
                width: 320,
                decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: _Details(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.house,
              size: 60,
              color: Colors.red,
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Jefry palomino',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Servido xxxxxx',
                  style: TextStyle(fontSize: 14),
                ),
                Text('Servido xxxxxx'),
              ],
            )
          ],
        ),
        const Text(
          '456 789',
          style: TextStyle(
              fontSize: 25,
              color: Color(0xff174376),
              fontWeight: FontWeight.bold),
        ),
        Container(
          height: 3,
          width: 300,
          color: Color(0xff174376),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Refresh Passcode',
                style: TextStyle(color: Color(0xff6ABD45), fontSize: 16),
              ),
            ),
            const Icon(
              Icons.replay_circle_filled_sharp,
              color: Color(0xff6ABD45),
            )
          ],
        ),
      ],
    );
  }
}
