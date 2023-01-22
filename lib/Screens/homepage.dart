import 'package:flutter/material.dart';

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
              'https://www.edigitalagency.com.au/wp-content/uploads/Netflix-N-Symbol-logo-red-transparent-RGB-png.png'
            ),
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
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'My List',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                child: Image.network(
                  'https://m.media-amazon.com/images/M/MV5BM2QzM2JiNTMtYjU4Ny00MDZkLTk3MmUtYTRjMzVkZGJlNmYyXkEyXkFqcGdeQXVyMTUzNTgzNzM0._V1_FMjpg_UX1000_.jpg',
                  width: double.infinity,
                  height: 200,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: null,
                      child: Column(
                        children: <Widget>[
                          TextButton.icon(
                            onPressed: null,
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'My List',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton.icon(
                        onPressed: null,
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Play',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: null,
                      child: Column(
                        children: <Widget>[
                          TextButton.icon(
                            onPressed: null,
                            icon: const Icon(
                              Icons.info,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Info',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                height: 350,
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: const EdgeInsets.only(top: 15, right: 100),
                      child: Text(
                        'Continue Watching For Shibin',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SizedBox(
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  child: Image(
                                    image: NetworkImage(
                                      'https://static.wikia.nocookie.net/netflix/images/9/94/Marvels_Daredevil_-_Season_1_-_Key_Art_02.jpg/revision/latest?cb=20200502155408',
                                    ),
                                    height: 220,
                                  ),
                                ),
                                const LinearProgressIndicator(
                                  value: 15,
                                ),
                                Row(
                                  children: const [
                                    IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.info,
                                          color: Colors.white,
                                        )),
                                    IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.more_vert,
                                          color: Colors.white,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: SizedBox(
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  child: Image(
                                    image: NetworkImage(
                                      'https://m.media-amazon.com/images/M/MV5BNzllYTM0ZDgtZTk4NS00YjYzLTliNjktMjZmNTZmNGZlNzI4XkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg',
                                    ),
                                    height: 220,
                                  ),
                                ),
                                const LinearProgressIndicator(
                                  value: 80,
                                ),
                                Row(
                                  children: const [
                                    IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.info,
                                          color: Colors.white,
                                        )),
                                    IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          Icons.more_vert,
                                          color: Colors.white,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 200),
                        child: Text(
                          'Popular on Netflix',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 250,
                        width: 250,
                      ),
                      Container(
                        color: Colors.white,
                        height: 250,
                        width: 250,
                      ),
                    ],
                  ),
              ),
              ),


        ],
      ),
    );
  }
}
