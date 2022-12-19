import 'package:flutter/material.dart';

class products extends StatelessWidget {
  final String imgpath2;
  final String prdtname;
  final String amount;
  final IconData icon1;
  final IconData icon2;
  final Widget detailpath;

  products({
    required this.imgpath2,
    required this.prdtname,
    required this.amount,
    required this.icon1,
    required this.icon2,
    required this.detailpath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple[200],
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => detailpath));
            },
            child: Container(
              height: 170,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(
                    imgpath2,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  prdtname,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.start,
                ),
                Text(
                  amount,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(icon1, size: 20),
                    Icon(icon2, size: 20),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
