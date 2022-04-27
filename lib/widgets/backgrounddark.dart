import 'package:flutter/material.dart';

class Background2 extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
        .3,
        1
      ],
          colors: [
        Color.fromARGB(141, 255, 255, 255),
        Color.fromARGB(255, 58, 58, 58)
      ]));

  const Background2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Purple Gradinet
        Container(decoration: boxDecoration),
      ],
    );
  }
}
