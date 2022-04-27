import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/theme/apptheme.dart';

class Background extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [.3, 1],
          colors: [AppTheme.gradiente_up, AppTheme.gradiente_down]));

  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(decoration: boxDecoration),
      ],
    );
  }
}
