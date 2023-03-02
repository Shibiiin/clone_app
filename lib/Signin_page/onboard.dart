import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SigninPage.dart';

final List<String> Slide = [
  'https://images.indianexpress.com/2022/01/Netflix-1.jpg',
  'https://comicyears.com/wp-content/uploads/2022/04/New-Weekend%C2%B4s-Streaming-Releases.jpg',
  'https://www.whats-on-netflix.com/wp-content/uploads/2022/10/new-netflix-original-movies-released-in-2022-jpg.webp',
  'https://www.j-14.com/wp-content/uploads/2022/02/netflix-march022.jpg?fit=1000%2C561&quality=86&strip=all',

];

final List<String> slideText =['slide1'
    'Slide2'
    'Slide3'
    'Slide4'
];
final List slides = slideText.map((e) => Container(
  child: Text(e,style: TextStyle(
    color: Colors.white,
    fontSize: 30,
  ),),
)).toList();


final List<Widget> ImageSlide = Slide.map((a) => Container(
  color: Colors.black,
    child: Stack(
      alignment: Alignment.center,
      children:[
        Image.network(
        a,
        fit: BoxFit.cover,
      ),
 ],
    ),
)).toList();

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset('assets/images/nf.png'),
    actions:  [
    Row(
    children: const [
    Text('Privacy',),
    ]
    ),
    IconButton(onPressed: () {  }, icon: Icon(Icons.more_vert),)
    ],
    ),
    body:
    Column(
      children: [

         Expanded(
           child: Stack(
             alignment: Alignment.topCenter,
             children: [
               Container(
                 color: Colors.black,
                 padding: EdgeInsets.only(top: 0),
                 child: CarouselSlider(
                      items:
                      ImageSlide,
                      options: CarouselOptions(
                        height: 700,
                        viewportFraction: 1,
                        enlargeCenterPage: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, r) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                      ),
                    ),

              const Positioned(
                   top: 100,
                   child: Text(
                     ('Unlimited \n entertainment, \n one low price.'),
                 style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.w700,
                   fontSize: 30,
                   fontFamily: 'Raleway'
                 ),
                     textAlign: TextAlign.center,
               )),

               Positioned(
                 bottom: 200,
                 left: 0,
                 right: 0,
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: List.generate(Slide.length, (index) => Container(
                       width: 10,
                       height: 10,
                       margin: EdgeInsets.all(5),
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: _current == index ? Colors.red : Colors.grey,
                       ),
                     ))
                 ),
               ),
               Positioned(
                   bottom: 40,
                   child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10)
                     ),
                     height: 50,
                     width: 400,
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.red
                       ),
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> SiginPage()));
                       },
                       child: Text('Sign In', ),
                     ),
                   ))



    ]),
         ),
      ],
    ),
    );
  }
}
