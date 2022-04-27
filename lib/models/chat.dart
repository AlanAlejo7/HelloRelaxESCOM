import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/share_preferences/preferences.dart';
import 'package:flutter_app_hellorelax/widgets/backgrounddark.dart';
import 'package:flutter_app_hellorelax/widgets/widgets.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat ESCOM'),
      ),
      body: Stack(
        children: [
          // Background
          theme != Preferences.isDarkmode
              ? const Background2()
              : const Background(),
          // Home depending
          _Chat()
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

class _Chat extends StatelessWidget {
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
