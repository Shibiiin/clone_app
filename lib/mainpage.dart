
import 'package:clone_app/Screens/navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modals/provider.dart';


void main() {
 runApp(ChangeNotifierProvider(
   child: CloneApp(),
   create: (_)=> MovieProvider(),
 ));
}


class CloneApp extends StatelessWidget {
  const CloneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
