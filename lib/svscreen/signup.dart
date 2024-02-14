import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:graduation_project/svscreen/signin.dart';
import 'package:graduation_project/svscreen/verification.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _forKey = GlobalKey<FormState>();
  bool ispassword = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _forKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              //
              Row(
                children: [
                  Text(
                    '  Create  \n  your account..',
                    style: TextStyle(
                      color: Color(0xff6C3428),
                      fontSize: 32,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              //asset
              SizedBox(
                height: 20,
              ),
              Container(
                width: 128,
                height: 128,
                child: Image.asset("assets/bro.png"),

                //_LoginscreenState
              ),
              SizedBox(
                height: 44,
              ),

              // Text full name
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      'Name',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 17,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),

                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xffBE8C63),
                    ),
                    // border: OutlineInputBorder()
                  ),
                ),
              ),

              // bottom email
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: TextFormField(
                  controller: emailcontroller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null ||
                        value.contains('@gmail.com') == false) {
                      return 'Enter valid Email';
                    }
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'Email',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 17,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),

                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xffBE8C63),
                    ),
                    //border: OutlineInputBorder()
                  ),
                ),
              ),

              //Text phone
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.length < 11) {
                      return 'Enter valid phone';
                    }
                  },
                  decoration: InputDecoration(
                    label: Text(
                      'Phone',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 17,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.call,
                      color: Color(0xffBE8C63),
                    ),
                    //border: OutlineInputBorder()
                  ),
                ),
              ),

              // bottom password
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
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
                      'password',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 17,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xffBE8C63),
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
              // bottom password
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 0),
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
                      'confirm password',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 17,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xffBE8C63),
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
              SizedBox(
                height: 50,
              ),
              // bottom create
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  //padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFBE8C63),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 181,
                  height: 51,

                  child: MaterialButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => verification()));
                    },
                    child: Text(
                      'sign in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'you have account?',
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 1.60,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signin()),
                      );
                    },
                    child: Text(
                      "  sign in",
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
