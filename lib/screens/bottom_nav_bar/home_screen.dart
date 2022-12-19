import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app4/colors.dart';
import 'package:flutter_app4/product_detail/kids_headphone1.dart';
import 'package:flutter_app4/product_detail/smart_watch1.dart';
import 'package:flutter_app4/product_detail/smart_watch2.dart';
import 'package:flutter_app4/product_detail/wireless_bluetooth.dart';
import 'package:flutter_app4/product_detail/wireless_earpiece.dart';
import 'package:flutter_app4/product_detail/wireless_headphone1.dart';
import 'package:flutter_app4/widgets/Products.dart';
import 'package:flutter_app4/widgets/choose_brand.dart';

class homescreen extends StatefulWidget {
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  bool isselected = true;

  final List<String> imagepath = [
    'assets/Adidas_logo.png',
    'assets/Nintendo_logo.png',
    'assets/Samsung_image.jpg',
    'assets/sony_logo.jpg',
    'assets/ubl_image.jpg',
  ];
  bool isfavourite = false;
  bool iscarth = false;
  final List products2 = [
    //  imgpath2 prdtname amount
    [
      'assets/kids_headphone2.jpg',
      'kids headphone',
      '\$380',
      Icons.favorite,
      Icons.shopping_cart_outlined,
      kidsheadphone(),
    ],

    [
      'assets/wireless_headphones.jpg',
      'wireless headphones',
      '\$200',
      Icons.favorite,
      Icons.shopping_cart_outlined,
      wirelessphone()
    ],
    [
      'assets/wireless_earpiece.jpg',
      'wireless earpiece',
      '\$150',
      Icons.favorite,
      Icons.shopping_cart_outlined,
      wirelessearpiece()
    ],
    [
      'assets/wireless_bluetooth.jpg',
      'wireless bluetooth',
      '\$210',
      Icons.favorite,
      Icons.shopping_cart_outlined,
      wirelessbluetooth()
    ],
    [
      'assets/smart_watch3.png',
      'smart watch',
      '\$400',
      Icons.favorite,
      Icons.shopping_cart_outlined,
      smartwatch1()
    ],
    [
      'assets/smart_watch2.jpg',
      'smart watch',
      '\$350',
      Icons.favorite,
      Icons.shopping_cart_outlined,
      smartwatch2()
    ],
    [
      'assets/smart_watch1.jpg',
      'smart watch',
      '\$370',
      Icons.favorite,
      Icons.shopping_cart_outlined,
      smartwatch2()
    ],
    [
      'assets/glasses4.jpg',
      'glasses',
      '\$250',
      Icons.favorite,
      Icons.shopping_cart_outlined,
      smartwatch2()
    ],
    [
      'assets/glasses1.jpg',
      'glasses',
      '\$300',
      Icons.favorite,
      Icons.shopping_cart_outlined,
      smartwatch2()
    ],
    [
      'assets/glass2.jpg',
      'glasses',
      '\$280',
      Icons.favorite,
      Icons.shopping_cart_outlined,
      smartwatch2()
    ],
    [
      'assets/kids_headphone.jpg',
      'kids headphone',
      '\$400',
      Icons.favorite,
      Icons.shopping_cart_outlined,
      smartwatch2()
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search here',
                      hintStyle: TextStyle(fontWeight: FontWeight.w600),
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        size: 30,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none),
                    ),
                  )),
                  Icon(
                    Icons.mic_none_outlined,
                    size: 35,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose brand',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagepath.length,
                    itemBuilder: (context, index) {
                      return choosebrand(imgpart: imagepath[index]);
                    }),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isselected = true;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Popular',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: isselected ? textblack : textblur,
                            ),
                          ),
                          if (isselected)
                            Icon(
                              Icons.circle,
                              size: 7,
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isselected = false;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Discount',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: !isselected ? textblack : textblur,
                            ),
                          ),
                          if (!isselected)
                            Icon(
                              Icons.circle,
                              size: 7,
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isselected = false;

                        ;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'More',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: isselected ? textblur : textblur,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    itemCount: products2.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 250,
                    ),
                    itemBuilder: (context, index) {
                      return products(
                        imgpath2: products2[index][0],
                        prdtname: products2[index][1],
                        amount: products2[index][2],
                        icon1: products2[index][3],
                        icon2: products2[index][4],
                        detailpath: products2[index][5],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
