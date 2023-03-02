import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [


          const Padding(padding: EdgeInsets.only(left: 10, top: 15),
              child:
              Text('Browse', style: TextStyle(
                color: Colors.white38,
                fontSize: 20,
              ),)
          ),

          ListTile(
            contentPadding:  EdgeInsets.only(right: 10, top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            title: const Text('Flash', style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),),
            leading: Image.network(
              'https://phantom-marca.unidadeditorial.es/4a8a9ead35e463774dc4ba4fcdf40179/f/jpg/assets/multimedia/imagenes/2021/08/30/16303338835433.jpg',
              height: 100,
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 105.0),
            child: Divider(
              color: Colors.white,
            ),
          ),

          ListTile(
            contentPadding:  EdgeInsets.only(right: 10, top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            title: const Text('Top Gun', style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),),
            leading: Image.network(
              'https://www.koimoi.com/wp-content/new-galleries/2022/04/top-gun-maverick-blows-cinemacon-away-001.jpg',
              scale: 4,
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 105.0),
            child: Divider(
              color: Colors.white,
            ),
          ),

          ListTile(
            contentPadding:  EdgeInsets.only(right: 10, top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            title: const Text('Game of Thrones', style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),),
            leading: Image.network(
              'https://ntvb.tmsimg.com/assets/p8681514_b_h10_aa.jpg?w=1280&h=720',
              height: 100,
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 105.0),
            child: Divider(
              color: Colors.white,
            ),
          ),

          ListTile(
            contentPadding:  EdgeInsets.only(right: 10, top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            title: const Text('Kooman', style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),),
            leading: Image.network(
              'https://www.cini360.com/wp-content/uploads/2022/11/jeethu-joseph-kooman-movie-review-jaffer-idukki-asif-ali-cast.webp',
              height: 100,
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 105.0),
            child: Divider(
              color: Colors.white,
            ),
          ),

          ListTile(
            contentPadding:  EdgeInsets.only(right: 10, top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            title: const Text('Paathan', style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),),
            leading: Image.network(
              'https://www.koimoi.com/wp-content/new-galleries/2022/12/pathan-cast-fee-revealed-deepika-padukone-shah-rukh-khan-john-abraham-takes-home-massive-paycheck-001.jpg',
              height: 100,
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 105.0),
            child: Divider(
              color: Colors.white,
            ),
          ),


          Padding(padding: EdgeInsets.only(left: 270, top: 5,
            bottom: MediaQuery
                .of(context)
                .viewInsets
                .bottom,
          ),
              child: TextButton.icon(onPressed: () {},
                icon: const Icon(Icons.clear, color: Colors.white),
                label: const Text('Clear all', style: TextStyle(
                    color: Colors.white
                ),),
              ))
        ],
      ),
    );
  }
}
