
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
  @override
  Widget build(BuildContext context) {

   int selectindex = 0;
   PageController pageController = PageController();

    void onTapitem(int pagevalue) {
      setState(() {
        selectindex = pagevalue;
      });
      pageController.jumpToPage(pagevalue);
    }


    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),

        ],
        currentIndex: selectindex,
        onTap: onTapitem,
      ),

      body: PageView(
        controller: pageController,
        children:<Widget> [
          HomePage(),
          SearchPage(),
          Explore(),
        ],
        onPageChanged: (value){
          setState(() {
            selectindex = value;
          });
        },
      )
    );
  }
}
