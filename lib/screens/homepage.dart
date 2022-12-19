import 'package:flutter/material.dart';
import 'package:flutter_app4/Drawer_screen/account_screen2.dart';
import 'package:flutter_app4/Drawer_screen/notification.dart';
import 'package:flutter_app4/Drawer_screen/wallet_screen.dart';
import 'package:flutter_app4/screens/bottom_nav_bar/Account_screen.dart';
import 'package:flutter_app4/screens/bottom_nav_bar/Discover_screen.dart';
import 'package:flutter_app4/screens/bottom_nav_bar/Favourite_screen.dart';
import 'package:flutter_app4/screens/bottom_nav_bar/home_screen.dart';
import 'package:flutter_app4/screens/loginpage.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int selectedindex = 0;
  void navigationbar(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  List<Widget> pages = [
    homescreen(),
    discoverscreen(),
    favouritescreen(),
    accountscreen2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black87,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text(
                      'DANTECH',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => accountscreen()));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      'Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => walletscreen()));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.account_balance_wallet_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      'Wallet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => notification()));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      'Notifications',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.nightlight_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text(
                    'Night Mode',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => login_page()));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.deepPurple,
          currentIndex: selectedindex,
          onTap: navigationbar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_module_rounded),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts_outlined),
              label: 'Account',
            ),
          ],
        ),
        body: pages[(selectedindex)]);
  }
}
