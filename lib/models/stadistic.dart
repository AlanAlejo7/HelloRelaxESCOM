import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/share_preferences/preferences.dart';
import 'package:flutter_app_hellorelax/widgets/backgrounddark.dart';
import 'package:flutter_app_hellorelax/widgets/widgets.dart';

class Stadistic extends StatefulWidget {
  const Stadistic({Key? key}) : super(key: key);

  @override
  State<Stadistic> createState() => _StadisticState();
}

class _StadisticState extends State<Stadistic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estadísticas'),
      ),
      body: Stack(
        children: [
          // Background
          theme != Preferences.isDarkmode
              ? const Background2()
              : const Background(),
          // Home depending
          _Stadistic()
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

class _Stadistic extends StatelessWidget {
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
