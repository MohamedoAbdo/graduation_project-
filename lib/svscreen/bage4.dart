import 'package:flutter/material.dart';
import 'package:graduation_project/svscreen/bage5.dart';

class bage4 extends StatefulWidget {
  const bage4({super.key});

  @override
  State<bage4> createState() => _bage4State();
}

class _bage4State extends State<bage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            //color: Colors.blue

            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/photo_16.jpg"))),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 610,
              width: 428,
            ),
            Row(
              children: [
                Text(
                  '    Lorem Ipsum Dolor    ',
                  style: TextStyle(
                    color: Color(0xFFE4D1B9),
                    fontSize: 24,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w600,
                    height: 2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Lorem Ipsum Dolor Sit Amet, Consectetur \nAdipiscing Elit, Sed Do Eiusmod Tempor Incididunt \nUt Labore Et Dolore Magna Aliqua. Ut Enim Ad \nMinim Veniam     ',
              style: TextStyle(
                color: Color(0xFFE4D1B9),
                fontSize: 16,
                fontFamily: 'inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 66,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bage5()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Next",
                    style: TextStyle(
                      color: Color(0xFFE4D1B9),
                      fontSize: 24,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Text("      "),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),
    );
  }
}
