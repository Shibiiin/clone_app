import 'package:clone_app/Pages/account.dart';
import 'package:clone_app/Signin_page/SigninPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {

  late SharedPreferences logindata;
  late String username;

  @override
  void initState(){
    initial();
  }

  @override
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children:[

              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SiginPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  )
                ),
                child: Text(
                  'Hi, $username',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
                SizedBox(width: 10,),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg',
                  ),
                ),
    ]
            ),
    );
  }
}
