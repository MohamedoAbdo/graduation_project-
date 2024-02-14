import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:graduation_project/svscreen/forget_pass.dart';
import 'package:graduation_project/svscreen/home.dart';
import 'package:graduation_project/svscreen/profile.dart';
import 'package:graduation_project/svscreen/signup.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  bool ispassword = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Form(
              key: _formKey,
              child: Column(children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 228,
                          height: 90,
                          child: Text(
                            '  Log Into \n  Your Account..',
                            style: TextStyle(
                              color: Color(0xff6C3428),
                              fontSize: 32,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 52,
                ),
                Container(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/bro.png"),

                  //_LoginscreenState
                ),
                SizedBox(
                  height: 64,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 16, left: 16, bottom: 0),
                  child: TextFormField(
                    controller: emailcontroller,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || !value.contains('@')) {
                        return 'Enter valid Email';
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xFFBE8C63),
                      ),
                      label: Text(
                        'E-Mail',
                        style: TextStyle(
                          color: Color(0xFFBE8C63),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                        ),
                      ),
                      // border: OutlineInputBorder()
                    ),
                  ),
                ),

                // bottom password
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 16, left: 16, bottom: 0),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordcontroller,
                    obscureText: ispassword,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return 'Enter valid password';
                      }
                    },
                    decoration: InputDecoration(
                      label: Text(
                        ' password',
                        style: TextStyle(
                          color: Color(0xFFBE8C63),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFFBE8C63),
                      ),
                      suffixIcon: ispassword
                          ? IconButton(
                              icon: Icon(Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  ispassword = !ispassword;
                                });
                              },
                            )
                          : IconButton(
                              icon: Icon(Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  ispassword = !ispassword;
                                });
                              },
                            ),
                      //border: OutlineInputBorder()
                    ),
                  ),
                ),
                //
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPass()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forget password?",
                        style: TextStyle(
                          color: Color(0xFFBE8C63),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 2,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      Text("    ")
                    ],
                  ),
                ),
                SizedBox(
                  height: 64,
                ),

                InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 180,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color(0xFFBE8C63),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFE4D1B9),
                            fontSize: 16,
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/Line 2.png",
                      width: 170,
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(" Login With ",
                            style: TextStyle(
                              color: Color(0xFFBE8C63),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                    Image.asset(
                      "assets/Line 2.png",
                      width: 170,
                      height: 2,
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "                                               ",
                        )
                      ],
                    ),
                    Image.asset(
                      "assets/Group 3.png",
                      width: 30,
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "     ",
                        )
                      ],
                    ),
                    Image.asset(
                      "assets/Group 5.png",
                      width: 30,
                      height: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'you don’t have account?',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signup()),
                        );
                      },
                      child: Text(
                        "   sign up",
                        style: TextStyle(
                          color: Color(0xff6C3428),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
