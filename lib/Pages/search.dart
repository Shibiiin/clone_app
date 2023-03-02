import 'package:flutter/material.dart';

import '../Search/content.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset(
            'assets/images/branding.png', scale: 5,
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: CustomScrollView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                child:
                TextField(
                  decoration:
                  InputDecoration(
                    hintText: 'Search for the Movies',
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: const Icon(Icons.mic, color: Colors.black,),
                    prefixIcon: const Icon(
                      Icons.search, color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: Cont(),
            ),



          ],
        ),






    );
  }
}

