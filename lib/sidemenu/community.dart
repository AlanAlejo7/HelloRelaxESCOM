import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/share_preferences/preferences.dart';
import 'package:flutter_app_hellorelax/widgets/backgrounddark.dart';
import 'package:flutter_app_hellorelax/widgets/widgets.dart';

void main() => runApp(const Community());

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool theme = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comunidad'),
      ),
      body: Stack(
        children: [
          // Background
          theme != Preferences.isDarkmode
              ? const Background2()
              : const Background(),
          // Home depending
          _Com()
        ],
      ),
    );
  }
}

class _Com extends StatelessWidget {
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
