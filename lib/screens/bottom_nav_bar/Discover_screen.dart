import 'package:flutter/material.dart';

class discoverscreen extends StatefulWidget {
  @override
  State<discoverscreen> createState() => _discoverscreenState();
}

class _discoverscreenState extends State<discoverscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'COMING SOON',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
