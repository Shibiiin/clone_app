import 'package:flutter/cupertino.dart';

class NfImg extends StatefulWidget {

  final String image;
  const NfImg({Key? key, required this.image}) : super(key: key);

  @override
  State<NfImg> createState() => _NfImgState();
}

class _NfImgState extends State<NfImg> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage(widget.image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
