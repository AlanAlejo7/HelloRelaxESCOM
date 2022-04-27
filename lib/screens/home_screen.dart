import 'package:flutter/material.dart';

import 'package:flutter_app_hellorelax/screens/all_screens.dart';
import 'package:flutter_app_hellorelax/share_preferences/preferences.dart';
import 'package:flutter_app_hellorelax/widgets/backgrounddark.dart';
import 'package:flutter_app_hellorelax/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routerName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _paginaactual = 0;
  bool theme = false;
  final List<Widget> _paginas = [
    _HomeBody(),
    _HomeCentral(),
    _HomeProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Relax'),
      ),
      drawer: const SideMenu(),
      body: Stack(
        children: [
          // Background
          theme != Preferences.isDarkmode
              ? const Background2()
              : const Background(),
          //const Background(),
          // Home depending
          _paginas[_paginaactual]
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _paginaactual = index;
          });
        },
        showUnselectedLabels: false,
        currentIndex: _paginaactual,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.remove_red_eye_sharp), label: 'Relax'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Usuario'),
        ],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [PageTitleTools(), CardTable()],
      ),
    );
  }
}

class _HomeCentral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // Titulos
          PageTitle(),
        ],
      ),
    );
  }
}

class _HomeProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // Titulos
          PageTitleProfile(),
        ],
      ),
    );
  }
}
