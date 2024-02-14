import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/svscreen/bage5.dart';
import 'package:graduation_project/svscreen/signin.dart';

class page6 extends StatefulWidget {
  @override
  State<page6> createState() => _page6State();
}

class _page6State extends State<page6> {
  bool status1 = false;
  bool status2 = false;
  //الصفحه الى فبل اللجن ال yes ,no

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
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
                          MaterialPageRoute(builder: (context) => bage5()),
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
                      '  Quick Surve    ',
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: 24,
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w500,
                        height: 2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/photo_35.png',
                width: 355,
                height: 12,
              ),
              SizedBox(
                height: 40,
              ),
              //
              Row(
                children: [
                  Text(
                    "  Did You Visit Egypt Before ?",
                    style: TextStyle(
                      color: Color(0xff6C3428),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      height: 1.7,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: 64,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signin()),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "    YES",
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        height: 1.7,
                      ),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(
                height: 32,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => page6()),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "    NO",
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        height: 1.7,
                      ),
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
