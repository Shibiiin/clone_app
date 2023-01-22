
import 'package:clone_app/search.dart';
import 'package:clone_app/homepage.dart';
import 'package:flutter/material.dart';

import 'explore.dart';

void main() {
 runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CloneApp(),
    theme: ThemeData(
      primaryColor: Colors.red,
      backgroundColor: Colors.black,
    ),
  ));
}


class CloneApp extends StatefulWidget {
  const CloneApp({super.key});
  @override
  State<CloneApp> createState() => _CloneAppState();
}

class _CloneAppState extends State<CloneApp> {

  int selectPage = 0;
  final screens = [
    HomePage(),
    SearchPage(),
    Explore(),
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
