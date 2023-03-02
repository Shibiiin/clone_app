import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> imgmovie = [
  'https://upload.wikimedia.org/wikipedia/en/thumb/8/87/Padavettu.jpg/220px-Padavettu.jpg',
  'https://m.media-amazon.com/images/M/MV5BNWEyOThlZTAtMzExMy00NDBhLTk4Y2QtMDg3OTRkNzgyNjEyXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg',
  'https://m.media-amazon.com/images/M/MV5BNzUyOWU2M2MtMDU1Yy00M2E1LTg3OTktMGRjYTE2MjkzYzUwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_FMjpg_UX1000_.jpg',
  'https://upload.wikimedia.org/wikipedia/en/thumb/a/aa/The_Flash_season_8_poster.jpg/220px-The_Flash_season_8_poster.jpg',

];

class Eng extends StatefulWidget {
  const Eng({Key? key}) : super(key: key);

  @override
  State<Eng> createState() => _EngState();
}

class _EngState extends State<Eng> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      itemBuilder: (context,index) {
        return  Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shadowColor: Colors.white,
              elevation: 3,
              child:
              Container(
                color: Colors.red,
                child: Image.network(imgmovie[index]),
              ),
            ),

          ],
        );
      },
      itemCount: imgmovie.length,

    );
  }
}
