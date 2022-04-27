import 'package:flutter/material.dart';

class PageTitleTools extends StatelessWidget {
  const PageTitleTools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('Hello Relax',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0))),
            SizedBox(height: 10),
            Text('Classificación de nuestras herramientas ',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 0, 0, 0))),
          ],
        ),
      ),
    );
  }
}
