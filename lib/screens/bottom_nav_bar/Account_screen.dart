import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app4/screens/bottom_nav_bar/home_screen.dart';
import 'package:flutter_app4/screens/loginpage.dart';
import 'package:flutter_app4/screens/homepage.dart';

class accountscreen extends StatefulWidget {
  @override
  State<accountscreen> createState() => _accountscreenState();
}

class _accountscreenState extends State<accountscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => homepage()));
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 13,
                    ),
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => login_page()));
                    },
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                  child: Container(
                height: 270,
              )),
              Positioned(
                  child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150)),
                ),
              )),
              Positioned(
                top: 100,
                left: 160,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                        image: AssetImage('dan_pics.jpg'), fit: BoxFit.fill),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightBlue.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'ACCOUNT',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: Column(
                children: [
                  Acct_Cont(Icons.person, 'Edit Profile', Colors.lightBlue),
                  SizedBox(
                    height: 10,
                  ),
                  Acct_Cont(Icons.location_on, 'Location', Colors.green),
                  SizedBox(
                    height: 10,
                  ),
                  Acct_Cont(Icons.lock, 'Privacy', Colors.red),
                  SizedBox(
                    height: 10,
                  ),
                  Acct_Cont(
                      Icons.picture_in_picture, 'Media', Colors.lightBlue),
                  SizedBox(
                    height: 10,
                  ),
                  Acct_Cont(Icons.notifications, 'Notification', Colors.yellow),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container Acct_Cont(IconData icons, String actname, Color iconcolor) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icons,
            color: iconcolor,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            actname,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
