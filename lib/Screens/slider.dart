import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

final List<String> movielist = [
  'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/c9d4ef99c14c9c2f7bebad091691af0bc178d7207a899f31623d63fc8037c334._UY500_UX667_RI_V_TTW_.jpg',
  'https://www.informalnewz.com/wp-content/uploads/2022/12/pathan.png',
  'https://images.thedirect.com/media/article_full/black-panther-2-cast-mcu-marvel.jpg',
  'https://images.indianexpress.com/2021/12/minnal-murali-review-.jpg',
  'https://cdn.telanganatoday.com/wp-content/uploads/2022/07/Gray-Man-is-too-grey-Skip-it-if-you-may.jpg',
  'https://occ-0-988-1007.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABdVozig2u8iR0NKqtv2lR888eLN6X8Exwx0wUT1zMMYAuRqc5x3oBq63k5SfbNvwnDRKBUhx-e21qjVNRlCu7lmAZpKIr15QARY.jpg?r=d58',
  'https://occ-0-999-55.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABRYMQkJS1ZskDzG8DgJtUYVKRX03-an8g3nMUoyumLdbU-lVxHOjDbuUVbuuHXa50Bizz9kP-hVbNdJFa2dzbdN_OPs0JD5tdo0.jpg?r=ecb',

];



final List<Widget> sliders = movielist.map((e) => Container(
        child: Stack(
          children: <Widget>[
            Image.network(e, fit: BoxFit.cover, width: 1000.0),
          ],
        )
)).toList();



/// Carousel Slider
class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: sliders,

            options: CarouselOptions(
              height: 200,
              scrollDirection: Axis.horizontal,
              enlargeCenterPage: true,
              autoPlay: false,
              autoPlayCurve: Curves.easeIn,
              autoPlayAnimationDuration: Duration(seconds: 10),
              pauseAutoPlayOnTouch: true,
              onPageChanged: (index, reason){
                setState(() {
                  _current = index;
                });
              }
            ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: movielist.map((e) {
          int index = movielist.indexOf(e);
          return Container(
            width: 10.0,
            height: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 2.0),
            decoration: BoxDecoration(
              color: _current == index
                  ? Colors.red
                  : Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          );
        }).toList(),
        ),
      ],
    );
     }
}


