import 'package:flutter/material.dart';

class choosebrand extends StatelessWidget {
  final String imgpart;
  choosebrand({required this.imgpart});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 110,
        width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgpart),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
