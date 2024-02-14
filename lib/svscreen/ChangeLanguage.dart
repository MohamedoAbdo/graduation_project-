import 'package:flutter/material.dart';
import 'package:graduation_project/svscreen/aboutus.dart';
import 'package:graduation_project/svscreen/profile.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()),
                        );
                      },
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                "     ",
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFF6C3428),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Change Language    ',
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: 32,
                        fontFamily: 'intr',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/photo_6.jpg',
                width: 165,
                height: 165,
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                height: 348,
                width: 396,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 45,
                              width: 281,
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  "  Change Language ",
                                  style: TextStyle(
                                    color: Color(0xff6C3428),
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 48,
                              width: 292,
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  "  choose your preferred language to\n           continue your adventure. ",
                                  style: TextStyle(
                                    color: Color(0xFFBE8C63),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),

                            InkWell(
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => aboutus()),
                                );

                                ;
                              },
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "English",
                                          style: TextStyle(
                                            color: Color(0xFFBE8C63),
                                            fontSize: 16,
                                            fontFamily: 'intr',
                                            fontWeight: FontWeight.w500,
                                            height: 2,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        Text("   "),
                                      ],
                                    ),
                                  ],
                                ),
                                width: 396,
                                height: 53,
                                padding: const EdgeInsets.all(6),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 2,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFBE8C63),
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),

                            //

                            InkWell(
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChangeLanguage()),
                                );

                                ;
                              },
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "العربيه",
                                          style: TextStyle(
                                            color: Color(0xFFBE8C63),
                                            fontSize: 16,
                                            fontFamily: 'intr',
                                            fontWeight: FontWeight.w500,
                                            height: 2,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        Text("   "),
                                      ],
                                    ),
                                  ],
                                ),
                                width: 395,
                                height: 53,
                                padding: const EdgeInsets.all(6),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 2,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFBE8C63),
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),

                            //
                            InkWell(
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChangeLanguage()),
                                );

                                ;
                              },
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "French",
                                          style: TextStyle(
                                            color: Color(0xFFBE8C63),
                                            fontSize: 16,
                                            fontFamily: 'intr',
                                            fontWeight: FontWeight.w500,
                                            height: 2,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        Text("   "),
                                      ],
                                    ),
                                  ],
                                ),
                                width: 396,
                                height: 53,
                                padding: const EdgeInsets.all(6),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 2,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFBE8C63),
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            //
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
