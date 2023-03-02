import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 15, right: 100),
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
    );
  }
}
