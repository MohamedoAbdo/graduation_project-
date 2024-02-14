import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_project/svscreen/controllers.dart';
import 'package:graduation_project/svscreen/signin.dart';

class verification extends StatefulWidget {
  const verification({super.key});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  void initState() {
    print("initState");

    startTime();
    super.initState();
  }

  int counter = 5;
  late Timer _timer;
  void startTime() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        print(timer.tick);
        if (counter > 0) {
          counter--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              //
              Text(
                ' verification    ',
                style: TextStyle(
                  color: Color(0xff6C3428),
                  fontSize: 32,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 2,
                ),
              ),
              //
              SizedBox(
                height: 16,
              ),
              //
              Text(
                '   we have sent a 4_digit confirmation code. \n         make sure you enter correct code.     ',
                style: TextStyle(
                  color: Color(0xFFBE8C63),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 2,
                ),
              ),
              //
              SizedBox(
                height: 58,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFieldOTP(
                    controller: c1,
                    first: true,
                    last: false,
                  ),
                  TextFieldOTP(
                    controller: c2,
                    first: false,
                    last: false,
                  ),
                  TextFieldOTP(
                    controller: c3,
                    first: false,
                    last: false,
                  ),
                  TextFieldOTP(
                    controller: c4,
                    first: false,
                    last: true,
                  ),
                ],
              ),

              //
              SizedBox(
                height: 24,
              ),
              //
              Row(
                children: [
                  Text(
                    "   Code Reload In",
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                  Text(
                      "                                                                        "),
                  Text(
                    '$counter',
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 1.60,
                    ),
                  ),
                ],
              ),
              //

              SizedBox(
                height: 64,
              ),
              //
              InkWell(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signin()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 174,
                    height: 51,
                    decoration: BoxDecoration(
                      color: Color(0xFFBE8C63),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Verify",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFE4D1B9),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => verification()),
                  );
                },
                child: Text(
                  "Resend code",
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void dispose() {
    print("dispose");
    c1.dispose();
    c2.dispose();
    c3.dispose();
    c4.dispose();
    _timer.cancel();
    super.dispose();
  }
}

class TextFieldOTP extends StatelessWidget {
  bool first;
  bool last;
  TextEditingController controller;

  TextFieldOTP({
    required this.first,
    required this.last,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 3.5,
            color: Color(0xFFE4D1B9),
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: TextField(
        onChanged: ((value) {
          if (value.isNotEmpty && last == false) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        }),
        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30),
        decoration: InputDecoration(
            border: InputBorder.none,
            constraints: BoxConstraints(
              maxHeight: MediaQuery.sizeOf(context).width / 6,
              maxWidth: MediaQuery.sizeOf(context).width / 7,
            )),
      ),
    );
  }
}
