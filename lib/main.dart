import 'package:flutter/material.dart';
import 'package:flutter_app4/product_detail/kids_headphone1.dart';
import 'package:flutter_app4/screens/bottom_nav_bar/Account_screen.dart';
import 'package:flutter_app4/screens/homepage.dart';
import 'package:flutter_app4/screens/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: login_page(),
    );
  }
}
