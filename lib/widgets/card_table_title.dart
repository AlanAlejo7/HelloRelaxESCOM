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
            Text('Herramientas',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10),
            Text('Hello Relax', style: TextStyle()),
          ],
        ),
      ),
    );
  }
}
