import 'package:flutter/material.dart';
import 'package:graduation_project/svscreen/profile.dart';
import 'package:graduation_project/svscreen/signin.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 250,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(children: <Widget>[
            SizedBox(
              height: 32,
            ),
            const Text(
              '                     Are You Sure You Want To Log Out?',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF6C3428)),
            ),
            //
            SizedBox(
              height: 32,
            ),

            Row(
              children: [
                Row(
                  children: [
                    Text(
                      "           ",
                    )
                  ],
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
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          " Cancele",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFBE8C63),
                            fontSize: 16,
                            fontFamily: 'intr',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                      width: 151,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color(0xFFBE8C63),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Log Out",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFE4D1B9),
                            fontSize: 16,
                            fontFamily: 'intr',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
