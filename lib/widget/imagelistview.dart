import 'dart:async';
import 'dart:math';

import 'package:clone_app/widget/nfimg.dart';
import 'package:flutter/cupertino.dart';

class ImageListView extends StatefulWidget {
  const ImageListView({Key? key, required int startIndex}) : super(key: key);

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {

  final _scrollController = ScrollController();

  @override
  void initState(){
    super.initState();
    _scrollController.addListener(() {
      if(!_scrollController.position.atEdge){
        /// implement scroll of list
        _autoScroll();
      }
      /// adding a list
      WidgetsBinding.instance.addPersistentFrameCallback((_) {
        _autoScroll();
      });
    });
  }

  void _autoScroll(){
    final currentScrollPosition = _scrollController.offset;
    final scrollEndPostion = _scrollController.position.maxScrollExtent;
    scheduleMicrotask(() {
      _scrollController.animateTo(
          currentScrollPosition == scrollEndPostion ?0 :
          scrollEndPostion,
          duration: Duration(seconds: 3), curve: Curves.linear);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.48*pi,
      child: SizedBox(
        height: MediaQuery.of(context).size.height *0.60,
        width: MediaQuery.of(context).size.width * 0.60,
        child: ListView.builder(
          controller: _scrollController,
           itemCount: 5,
            itemBuilder: (context, index){
            return NfImg(image: Imagee[index][0]);
            }
        ),
      ),

    );
  }
}


final List Imagee =[
  ['assets/images/nf.png'],
  ['assets/images/branding.png'],
  ['assets/images/nf.png'],
  ['assets/images/branding.png'],
  ['assets/images/nf.png'],
];