import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/svscreen/bage2.dart';

class bage1 extends StatefulWidget {
  @override
  State<bage1> createState() => _bage1State();
}

class _bage1State extends State<bage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //backgroundColor: Colors.white,
      //automaticallyImplyLeading: false,
      // leading: IconButton(
      // onPressed: () {
      //   Navigator.of(context).pop();
      //  },
      // icon: Icon(Icons.arrow_back_ios),
      //  ),
      //),
      body: Container(
        decoration: const BoxDecoration(
            //color: Colors.blue

            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/photo_8.jpg"))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 454,
              ),
              Container(
                width: 428,
                height: 472,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 54,
                          width: 420,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              "  Language Selection ",
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
                          height: 60,
                          width: 350,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              "  Choose your preferred language To \n              start your adventure. ",
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
                              MaterialPageRoute(builder: (context) => bage2()),
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
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => bage2()),
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
                                borderRadius: BorderRadius.circular(20),
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
                              MaterialPageRoute(builder: (context) => bage2()),
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
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
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
