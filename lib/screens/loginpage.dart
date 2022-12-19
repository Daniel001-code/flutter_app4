import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app4/colors.dart';
import 'package:flutter_app4/screens/homepage.dart';

class login_page extends StatefulWidget {
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  bool isSignin = true;
  bool isrememberme = false;
  bool isremembermesignup = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xffECF1F7),
              Color(0xffEEF0F9),
              Color(0xffF5F2F4),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'DANTECH ENTERPRISE',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                isSignin ? 'Hello Again!' : 'Hello!',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                isSignin
                    ? "Wecome back you've \n been missed!"
                    : "You're Wecome \n join us!",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: textbold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSignin = true;
                      });
                    },
                    child: Container(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: isSignin ? textbold : textblur),
                          ),
                          if (isSignin)
                            Container(
                              color: containerbold,
                              height: 5,
                              width: 150,
                            ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSignin = false;
                      });
                    },
                    child: Container(
                      width: 150,
                      child: Column(
                        children: [
                          Text(
                            'Sign up',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: !isSignin ? textbold : textblur,
                            ),
                          ),
                          if (!isSignin)
                            Container(
                              color: textbold,
                              height: 5,
                              width: 150,
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              if (isSignin)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Signin_page(),
                ),
              if (!isSignin)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Signup_page(),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: !isSignin ? 3 : 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => homepage()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.deepPurple.withOpacity(0.4),
                              spreadRadius: 3,
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            ),
                            BoxShadow(
                              color: Color(0xFFF0F1F8),
                              spreadRadius: 10,
                              blurRadius: 20,
                              offset: Offset(10, 0),
                            ),
                            BoxShadow(
                              color: Color(0xFFF0F1F8),
                              spreadRadius: 10,
                              blurRadius: 20,
                              offset: Offset(-10, 0),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            isSignin ? 'Sign in' : 'Sign up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: !isSignin ? 10 : 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 5,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xFFF0F1F8),
                              Colors.grey,
                            ]),
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                        ),
                        Text(
                          'Or continue with',
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          width: 50,
                          height: 5,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.grey,
                              Color(0xFFF0F1F8),
                            ]),
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: !isSignin ? 10 : 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        icon_container('Google_logo.jpg'),
                        icon_container('twitter_logo.png'),
                        icon_container('Facebook_logo.png'),
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

  Container icon_container(String social) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          height: 40,
          width: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(social),
              fit: BoxFit.fill,
            ),
            color: Color(0xFFF1F1F7),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  Container Signin_page() {
    return Container(
      child: Column(
        children: [
          Textfield(Icons.person_outlined, 'Enter username', true, false),
          SizedBox(
            height: 10,
          ),
          Textfield(Icons.lock_outline, 'Enter password', false, true),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: isrememberme,
                        activeColor: textbold,
                        checkColor: Colors.pink,
                        onChanged: (value) {
                          setState(() {
                            isrememberme = !isrememberme;
                          });
                        }),
                    Text(
                      'Remeber me',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Recovery Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container Signup_page() {
    return Container(
      child: Column(
        children: [
          Textfield(Icons.person_outline, 'Enter username', false, false),
          SizedBox(
            height: 10,
          ),
          Textfield(
              Icons.phone_android_outlined, 'Enter phone number', false, false),
          SizedBox(
            height: 10,
          ),
          Textfield(Icons.email_outlined, 'Enter email', false, false),
          SizedBox(
            height: 10,
          ),
          Textfield(Icons.lock_clock_outlined, 'Enter password', false, true),
          SizedBox(
            height: 10,
          ),
          Textfield(Icons.lock_clock_outlined, 'Confirm password', false, true),
          Row(
            children: [
              Checkbox(
                  value: isremembermesignup,
                  activeColor: textbold,
                  checkColor: Colors.pink,
                  onChanged: (value) {
                    setState(() {
                      isremembermesignup = !isremembermesignup;
                    });
                  }),
              Text(
                'Remeber me',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container Textfield(
      IconData icons, String hinttext, bool email, bool password) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextField(
          obscureText: password,
          keyboardType: email ? TextInputType.emailAddress : TextInputType.text,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            hintText: hinttext,
            hintStyle: TextStyle(
              color: textbold,
            ),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(icons),
          )),
    );
  }
}
