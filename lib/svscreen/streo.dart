import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/svscreen/ChangeLanguage.dart';
import 'package:graduation_project/svscreen/Coastaltourism.dart';
import 'package:graduation_project/svscreen/PharaonicVillage.dart';
import 'package:graduation_project/svscreen/Restaurants.dart';
import 'package:graduation_project/svscreen/profile.dart';

class streo extends StatefulWidget {
  const streo({super.key});

  @override
  State<streo> createState() => _streoState();
}

class _streoState extends State<streo> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        key: _formKey,
        decoration: const BoxDecoration(
            //color: Colors.blue

            image: DecorationImage(image: AssetImage("assets/photo_8.jpg"))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Stack(children: [
                      Image.asset(
                        'assets/photo_1.jpg',
                        width: 429,
                        height: 260,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Coastaltourism()),
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
                      ),
                    ])
                  ],
                ),
              ),

              //
              Container(
                width: 430,
                height: 1150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 30),

                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                    "    Streo                                                  ",
                                    style: TextStyle(
                                      color: Color(0xFF6C3428),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ))
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              color: Color(0xFF6C3428),
                            ),
                          ],
                        ),
                        //

                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "    ",
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Restaurants()),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/photo_34.jpg',
                                            width: 188,
                                            height: 200,
                                          ),
                                        ])
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "   ",
                                )
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ProfileScreen()),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/photo_20.jpg',
                                            width: 188,
                                            height: 200,
                                          ),
                                        ])
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        //

                        SizedBox(height: 32),
                        Container(
                          width: 400,
                          height: 21,
                          child: Text(
                            '     Description:    ',
                            style: TextStyle(
                              color: Color(0xFF6C3428),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        Container(
                          height: 215,
                          width: 396,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              '   Lorem ipsum dolor sit amet, consectetur\n   Adipiscing elit, sed do eiusmod tempor incididunt\n   Ut labore et dolore magna aliqua. Ut enim ad\n   Minim veniam.\n   Lorem ipsum dolor sit amet, consectetur\n   Adipiscing elit, sed do eiusmod tempor incididunt\n   Ut labore et dolore magna aliqua.  .  ',
                              style: TextStyle(
                                color: Color(0xFFBE8C63),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        //
                        SizedBox(height: 40),
                        //
                        Container(
                          width: 396,
                          child: Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: Color(0xFF6C3428),
                              ),
                              Row(
                                children: [
                                  Text("     Streo.restaurant.com    ",
                                      style: TextStyle(
                                        color: Color(0xFF6C3428),
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900,
                                        height: 1.5,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 25,
                        ),
                        //

                        Container(
                          width: 396,
                          child: Row(
                            children: [
                              Icon(
                                Icons.call,
                                color: Color(0xFF6C3428),
                              ),
                              Row(
                                children: [
                                  Text("     01092065207   ",
                                      style: TextStyle(
                                        color: Color(0xFF6C3428),
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900,
                                        height: 1.5,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 25,
                        ),
                        //

                        Container(
                          width: 396,
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFF6C3428),
                              ),
                              Row(
                                children: [
                                  Text("     Location    ",
                                      style: TextStyle(
                                        color: Color(0xFF6C3428),
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900,
                                        height: 1.5,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 25,
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
