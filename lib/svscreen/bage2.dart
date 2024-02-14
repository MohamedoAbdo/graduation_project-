import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/svscreen/bage3.dart';

class bage2 extends StatefulWidget {
  const bage2({super.key});

  @override
  State<bage2> createState() => _bage2State();
}

class _bage2State extends State<bage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            //color: Colors.blue

            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/photo_2.jpg"))),
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
                  MaterialPageRoute(builder: (context) => bage3()),
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
