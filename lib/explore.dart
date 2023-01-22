import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Padding(
              padding:  EdgeInsets.only(left: 70),
              child: Column(
                children: const [
                  Icon(Icons.explore,color: Colors.grey,
                  size: 250,
                  ),
                  Text('Explore New Movies',style: TextStyle(color: Colors.white,
                  fontSize: 20),)
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
