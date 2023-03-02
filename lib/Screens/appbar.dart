import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({Key? key}) : super(key: key);

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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 10)),
            child: Text(
              'My List',
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    ),
],
      ),
    );
  }
}

