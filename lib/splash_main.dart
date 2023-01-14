import 'package:clone_app/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const CloneApp(title: 'Native Splash',),
    theme: ThemeData(
      primaryColor: Colors.red,
      backgroundColor: Colors.black,
    ),
  ));
}

class CloneApp extends StatefulWidget {
  const CloneApp
      ({Key? key, required this.title}) : super(key: key);
final String title;

  @override
  State<CloneApp> createState() => _CloneAppState();
}

class _CloneAppState extends State<CloneApp> {
  @override
  void initState(){
    super.initState();
    initialization();
  }

  void initialization() async {
    Future.delayed(const Duration(seconds: 120));
    FlutterNativeSplash.remove();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}
