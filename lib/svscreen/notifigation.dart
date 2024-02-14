import 'package:flutter/material.dart';

class Notifica extends StatelessWidget {
  Notifica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            'Notification',
            style: TextStyle(
              color: Color(0xff6C3428),
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Now When You Book From App You Can Get 10%  Descount On Taba Trip.',
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            width: 396,
            height: 80,
            padding: const EdgeInsets.all(5),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0x336C3428),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Now When You Book From App You Can Get 5%  Descount On Luxor\&Aswan Trip.',
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            width: 396,
            height: 80,
            padding: const EdgeInsets.all(5),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0x336C3428),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
