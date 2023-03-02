import 'package:carousel_slider/carousel_slider.dart';
import 'package:clone_app/Screens/videoplayer.dart';
import 'package:flutter/material.dart';

import '../Screens/appbar.dart';
import '../Screens/Video_player2.dart';



class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
           const SliverToBoxAdapter(
            child: SizedBox(
              width: 150,
              height: kToolbarHeight + 50,
              child: Bar(),
            ),
          ),
       const    SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, top: 10),
              child: Text(
                'Upcoming Movies',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child:SizedBox(
                height: 250,
                child: Raangi()),
          ),


           SliverToBoxAdapter(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15, top: 10),
              child:
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Berlin(),
              ),
            ),

    ],
    ),

          ),


          const SliverToBoxAdapter(
            child:
            Padding(
              padding: EdgeInsets.only(right: 15, top: 10, left: 15),
              child: SizedBox(
                height: 250,
                child: Mission(),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
