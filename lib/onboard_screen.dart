import 'package:clone_app/Signin_page/SigninPage.dart';
import 'package:clone_app/widget/imagelistview.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
              top: -0,
              left: 80,
              child: Row(
                children: const [
                  ImageListView(startIndex: 0),
                  ImageListView(startIndex: 1),
                  ImageListView(startIndex: 2),
                  ImageListView(startIndex: 3),
                ],
              )),
          Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                    colors:
                    [
                      Colors.transparent,
                      Colors.red.shade500.withOpacity(0.6),
                      Colors.black45,
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                     const  Text('Unlimited entertainment, \n one low price.',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child:  Text(
                          'All of Netflix, \n starting at just \n Rs 45.',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(60)
                        ),
                        child: SliderButton(
                          action: () {
                            ///Do something here
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SiginPage(),
                              ),
                            );
                          },
                          label: const Text(
                            "Get Started",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 25),
                            textAlign: TextAlign.start
                          ),
                          icon: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.red,),
                          width: MediaQuery.of(context).size.width*1,
                          radius: 80,
                          backgroundColor: Colors.transparent,
                          highlightedColor: Colors.black,
                          baseColor: Colors.white38,
                        ),
                      ),
                  const SizedBox(
                    height: 40,
                      ),
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
