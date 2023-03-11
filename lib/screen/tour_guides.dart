import 'package:flutter/material.dart';
class TourGuide extends StatefulWidget {
  const TourGuide({Key? key}) : super(key: key);

  @override
  State<TourGuide> createState() => _TourGuideState();
}

class _TourGuideState extends State<TourGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          // Icon(
          //   Icons.menu,
          //   color: Colors.greenAccent,
          //   size: 30,
          // ),
          Text('Book Tour Guides'),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: IntrinsicHeight(
      child: Column(
        children: [
          
        ],
      ),
        ),
      ),
    );
  }
}

