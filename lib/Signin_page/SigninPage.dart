import 'package:clone_app/Pages/homepage.dart';
import 'package:clone_app/Screens/navbar.dart';
import 'package:clone_app/Signin_page/signin_dash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onboard.dart';


class SiginPage extends StatefulWidget {
  const SiginPage({Key? key}) : super(key: key);

  @override
  State<SiginPage> createState() => _SiginPageState();
}

class _SiginPageState extends State<SiginPage> {

  var formkey = GlobalKey<FormState>();
  bool viewvalue = true;


  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;
  late bool newuser;


  @override
  void initState() {
    check_if_already_login();
    super.initState();
  }

  Future<void> check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? false);
    if (kDebugMode) {
      print(newuser);
    }
    if (newuser == true) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Dash()));
    }
  }

  @override
  void dispose() {
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset('assets/images/nf.png'),
        actions: [
          Row(
              children: const [
                Text('Privacy',),
              ]
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert),)
        ],
      ),
      body:
      Form(
        key: formkey,
        child: ListView(
          children: [

            Padding(
              padding: EdgeInsets.all(20),
              child:
              TextFormField(
                controller: username_controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                ),
                validator: (text) {
                  if (text!.isEmpty) {
                    return 'Enter a Valid Email address';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
              ),),

            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                obscureText: viewvalue,
                obscuringCharacter: '*',
                controller: password_controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'password',
                ),
                validator: (text) {
                  if (text!.length < 7 || text.isEmpty) {
                    return 'Password should be greater than 7 or Must be filled';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.done,
              ),),

            ElevatedButton(onPressed: ()
            {
              String username = username_controller.text;
              String password = password_controller.text;
              final isValid = formkey.currentState!.validate();

              if (isValid) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const NavBar()));
                logindata.setBool('login', false);
                logindata.setString('username', username);
              }
              else {
               return null;
              }
            },

              child: Text('login'),
            ),
          ],
        ),
      ),
    );
  }
}


