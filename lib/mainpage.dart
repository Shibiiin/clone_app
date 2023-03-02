
import 'package:clone_app/Screens/navbar.dart';
import 'package:clone_app/Signin_page/SigninPage.dart';
import 'package:clone_app/onboard_screen.dart';
import 'package:flutter/material.dart';

import 'Signin_page/onboard.dart';

void main() {
 runApp(MaterialApp(
   home: CloneApp(),
   debugShowCheckedModeBanner: false,
 ));
}


class CloneApp extends StatelessWidget {
  const CloneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
