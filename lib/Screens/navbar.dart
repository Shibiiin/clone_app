
import 'package:clone_app/Pages/homepage.dart';
import 'package:flutter/material.dart';

import '../Pages/account.dart';
import '../Pages/search.dart';

import '../Pages/explore.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int selectPage = 0;
  final screens = [
    HomePage(),
    SearchPage(),
    Explore(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectPage,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
        ],
        onTap: (index){
          setState(() {
            selectPage = index;
          });
        },
      ),
      body: screens[selectPage],
    );
  }
}
