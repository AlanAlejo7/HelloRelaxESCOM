import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/share_preferences/preferences.dart';
import 'package:flutter_app_hellorelax/widgets/backgrounddark.dart';
import 'package:flutter_app_hellorelax/widgets/widgets.dart';

class Date extends StatefulWidget {
  const Date({Key? key}) : super(key: key);

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generar Cita'),
      ),
      body: Stack(
        children: [
          // Background
          theme != Preferences.isDarkmode
              ? const Background2()
              : const Background(),
          // Home depending
          _Date()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            //_paginaactual = index;
          });
        },
        showUnselectedLabels: false,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_outlined), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fiber_new_sharp), label: 'Relax'),
        ],
      ),
    );
  }
}

class _Date extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // Cuerpo
        ],
      ),
    );
  }
}
