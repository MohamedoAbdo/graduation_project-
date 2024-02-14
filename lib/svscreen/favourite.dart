import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            'Favourite',
            style: TextStyle(
              color: Color(0xff6C3428),
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
              child: Column(children: [
            Stack(children: [
              Image.asset(
                'assets/Photo2.png',
                width: 180,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 138),
                child: Image.asset(
                  'assets/Frame 2.png',
                  width: 180,
                ),
              ),
            ])
          ])),
          Container(
            child: Column(
              children: [
                Stack(children: [
                  Image.asset(
                    'assets/photo1.png',
                    width: 180,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 138),
                    child: Image.asset(
                      'assets/Frame 1.png',
                      width: 180,
                    ),
                  )
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
