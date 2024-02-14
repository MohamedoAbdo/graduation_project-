import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/svscreen/Coastaltourism.dart';
import 'package:graduation_project/svscreen/PharaonicVillage.dart';

class Giza extends StatefulWidget {
  const Giza({super.key});

  @override
  State<Giza> createState() => _GizaState();
}

class _GizaState extends State<Giza> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            //color: Colors.blue

            image:
                DecorationImage(image: AssetImage("assets/Rectangle 333.png"))),
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Stack(children: [
                      Image.asset(
                        'assets/Rectangle 333.png',
                        width: 429,
                        height: 337,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PharaonicVillage()),
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
                height: 1010,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 32,
                        ),
                        Container(
                          width: 396,
                          height: 29,
                          child: Text(
                            '   Giza    ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFF6C3428),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 24),

                        Container(
                          height: 375,
                          width: 396,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              '   Lorem ipsum dolor sit amet, consectetur\n   Adipiscing elit, sed do eiusmod tempor incididunt\n   Ut labore et dolore magna aliqua. Ut enim ad\n   Minim veniam.\n   Lorem ipsum dolor sit amet, consectetur\n   Adipiscing elit, sed do eiusmod tempor incididunt\n   Ut labore et dolore magna aliqua. Ut enim ad\n   Minim veniam.Lorem ipsum dolor sit amet,\n   Consectetur adipiscing elit, sed do eiusmod\n   Tempor incididunt ut labore et dolore magna\n   Aliqua. Ut enim ad minim veniam.\n   Lorem ipsum dolor sit amet, consectetur\n   Adipiscing elit, sed do eiusmod tempor incididunt\n   Ut labore et dolore magna aliqua. Ut enim ad\n   Minim veniam .Ut enim ad minim veniam.Lorem\n   Ipsum dolor sit amet, consectetur adipiscing elit .   ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFFBE8C63),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 32),

                        Container(
                          width: 396,
                          height: 29,
                          child: Text(
                            '   popular places:     ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFF6C3428),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                            ),
                          ),
                        ),

                        SizedBox(height: 32),
                        Row(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "            ",
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Coastaltourism()),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/Rectangle 336.png',
                                            width: 150,
                                            height: 179,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 140),
                                            child: Image.asset(
                                              'assets/Frame 11623.png',
                                              width: 150,
                                            ),
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
                                  "           ",
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
                                              Coastaltourism()),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/Rectangle 336.png',
                                            width: 150,
                                            height: 179,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 140),
                                            child: Image.asset(
                                              'assets/Frame 11623.png',
                                              width: 150,
                                            ),
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
                        SizedBox(
                          height: 25,
                        ),
                        //

                        Row(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "            ",
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Coastaltourism()),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/Rectangle 336.png',
                                            width: 150,
                                            height: 179,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 140),
                                            child: Image.asset(
                                              'assets/Frame 11623.png',
                                              width: 150,
                                            ),
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
                                  "           ",
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
                                              Coastaltourism()),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/Rectangle 336.png',
                                            width: 150,
                                            height: 179,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 140),
                                            child: Image.asset(
                                              'assets/Frame 11623.png',
                                              width: 150,
                                            ),
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
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    )
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
