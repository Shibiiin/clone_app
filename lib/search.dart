import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      title: Image.asset(
        'assets/images/branding.png',scale: 5,
      ),
      centerTitle: true,
    ),
      backgroundColor: Colors.black,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top:10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              TextField(
                decoration:
                InputDecoration(
                  hintText: 'Search for the Movies',
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: const Icon(Icons.mic,color: Colors.black,),
                  prefixIcon: const Icon(
                    Icons.search,color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
             const Padding(padding: EdgeInsets.only(top: 15),
                  child:
              Text('Popular Search', style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),)
              ),
                 Card(
                  color: Colors.grey[900],
                  child:
                   ListTile(
                     contentPadding:const EdgeInsets.only(right: 10),
                    title: const Text('Flash', style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),),
                    leading: Image.network(
                        'https://phantom-marca.unidadeditorial.es/4a8a9ead35e463774dc4ba4fcdf40179/f/jpg/assets/multimedia/imagenes/2021/08/30/16303338835433.jpg',
                    height: 100,
                    ),
                    trailing: const Icon(Icons.play_arrow, color: Colors.white,),
                  ),
                ),
              Card(
                color: Colors.grey[900],
                child:
                ListTile(
                  contentPadding: EdgeInsets.only(right: 10),
                  title:const Text('Top Gun', style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),),
                  leading: Image.network(
                    'https://www.koimoi.com/wp-content/new-galleries/2022/04/top-gun-maverick-blows-cinemacon-away-001.jpg',
                    height: 100,
                  ),
                  trailing: Icon(Icons.play_arrow, color: Colors.white,),
                ),
              ),
              Card(
                color: Colors.grey[900],
                child:
                ListTile(
                  contentPadding: EdgeInsets.only(right: 10),
                  title: const Text('Game Of Throne', style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),),
                  leading: Image.network(
                    'https://ntvb.tmsimg.com/assets/p8681514_b_h10_aa.jpg?w=1280&h=720',
                    height: 100,
                  ),
                  trailing: Icon(Icons.play_arrow, color: Colors.white,),
                ),
              ),
              Card(
                color: Colors.grey[900],
                child:
                ListTile(
                  contentPadding: EdgeInsets.only(right: 10),
                  title:const Text('Kooman', style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),),
                  leading: Image.network(
                    'https://www.cini360.com/wp-content/uploads/2022/11/jeethu-joseph-kooman-movie-review-jaffer-idukki-asif-ali-cast.webp',
                    height: 100,
                  ),
                  trailing: Icon(Icons.play_arrow, color: Colors.white,),
                ),
              ),
              Card(
                color: Colors.grey[900],
                child:
                ListTile(
                  contentPadding: EdgeInsets.only(right: 10),
                  title: const Text('Paathan', style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),),
                  leading: Image.network(
                    'https://www.koimoi.com/wp-content/new-galleries/2022/12/pathan-cast-fee-revealed-deepika-padukone-shah-rukh-khan-john-abraham-takes-home-massive-paycheck-001.jpg',
                    height: 100,
                  ),
                  trailing: Icon(Icons.play_arrow, color: Colors.white,),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 270,top: 5),
              child: TextButton.icon(onPressed: () { }, icon: const Icon(Icons.clear,color: Colors.white),
                label: const Text('Clear all', style: TextStyle(
                    color: Colors.white
                ),),
              ))
            ],
          ),
        ),
      )
    );
  }
}
