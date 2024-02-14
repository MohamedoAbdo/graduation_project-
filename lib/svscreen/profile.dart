import 'package:flutter/material.dart';
import 'package:graduation_project/svscreen/ChangeLanguage.dart';
import 'package:graduation_project/svscreen/PharaonicVillage.dart';
import 'package:graduation_project/svscreen/drawer.dart';
import 'package:graduation_project/svscreen/edetprofile.dart';
import 'package:graduation_project/svscreen/favourite.dart';
import 'package:graduation_project/svscreen/notifigation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> key = GlobalKey();

    return Scaffold(
      drawer: const NavDrawer(),
      key: key,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                              builder: (context) => ChangeLanguage()),
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
                      '  Profile    ',
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
              const SizedBox(height: 50.0),
              const CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/Ellipse 93.png'),
              ),
              const SizedBox(height: 16.0),
              const Text(
                ' Gamila_hesham',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6C3428),
                ),
              ),
              const SizedBox(height: 16.0),
              InkWell(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => edetprofile()),
                  );

                  ;
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 172,
                    height: 51,
                    decoration: BoxDecoration(
                      color: Color(0xFFBE8C63),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Text("   "),
                            Icon(
                              Icons.edit,
                              color: Color(0xffE4D1B9),
                            ),
                            Text(
                              "   Edit Profile",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffE4D1B9),
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 51,
              ),
              const SizedBox(height: 20.0),
              _settingItem(
                title: 'Notification',
                icon: Icons.notifications,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifica()));
                },
              ),
              Image.asset(
                'assets/Line 9.png',
                width: 380,
                height: 10,
              ),
              _settingItem(
                title: ' Language',
                icon: Icons.language,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangeLanguage()));
                },
              ),
              Image.asset(
                'assets/Line 9.png',
                width: 380,
                height: 10,
              ),
              _settingItem(
                title: 'Favourite',
                icon: Icons.favorite,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favourite()));
                },
              ),
              Image.asset(
                'assets/Line 9.png',
                width: 380,
                height: 10,
              ),
              _settingItem(
                title: 'Help',
                icon: Icons.help,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PharaonicVillage()));
                },
              ),
              Image.asset(
                'assets/Line 9.png',
                width: 380,
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14, bottom: 32),
                child: Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        key.currentState!.openDrawer();
                      },
                      child: Text(
                        'Log Out                                                                      ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFBE8C63),
                        ),
                      ),
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

  Container _settingItem({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
    Color? iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      margin: const EdgeInsets.only(bottom: 0.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: Color(0xFFBE8C63)),
        title: Text(title),
        textColor: Color(0xFFBE8C63),
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Color(0xFFBE8C63),
        ),
      ),
    );
  }
}
