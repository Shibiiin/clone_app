import 'package:carousel_slider/carousel_slider.dart';
import 'package:clone_app/Category/top%20rated.dart';
import 'package:clone_app/Screens/slider.dart';
import 'package:clone_app/Screens/videoplayer.dart';
import 'package:clone_app/Signin_page/signin_dash.dart';
import 'package:flutter/material.dart';




import '../Category/english.dart';
import '../Screens/content.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Image.network(
                'https://www.edigitalagency.com.au/wp-content/uploads/Netflix-N-Symbol-logo-red-transparent-RGB-png.png'),
            backgroundColor: Colors.black,
            actions:  <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).viewInsets.right,
                     top: 10),
                child:
                  Container(
                      width: 200,
                      color: Colors.black,
                      child: Dash(),
                  ),
                ),
                ],
          ),

          SliverToBoxAdapter(
            child: Container(
              child: const SliderPage(),
            ),
          ),


          const SliverToBoxAdapter(
            child: SizedBox(
              height: 350,
              child: ContentPage(),
            ),
          ),

       const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text('Top Rated',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ),

        const SliverToBoxAdapter(
          child: SizedBox(
            height: 250,
            child: TopRated(),
          ),
        ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('English Movie',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 250,
              child: Eng(),
            ),
          ),

        // Container(
        //   height: 700,
        //       color: Colors.red,
        //       child: MovieList(),
        //     ),



        ],
      ),
    );
  }
}
