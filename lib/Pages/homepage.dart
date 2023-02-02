import 'package:carousel_slider/carousel_slider.dart';
import 'package:clone_app/Screens/slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../Screens/movie list.dart';
import '../modals/provider.dart';
import '../Screens/content.dart';
import '../Screens/listscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieProvider>().movies;
    var myList = context.watch<MovieProvider>().myList;

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Image.network(
                'https://www.edigitalagency.com.au/wp-content/uploads/Netflix-N-Symbol-logo-red-transparent-RGB-png.png'),
            backgroundColor: Colors.black,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Tv Shows',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Movies',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyListScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 10)),
                  child: Text(
                    'My List ${myList.length}',
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
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

        Container(
          height: 700,
              color: Colors.red,
              child: MovieList(),
            ),



        ],
      ),
    );
  }
}
