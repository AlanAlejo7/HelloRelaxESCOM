import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/share_preferences/preferences.dart';
import 'package:flutter_app_hellorelax/widgets/backgrounddark.dart';
import 'package:flutter_app_hellorelax/widgets/widgets.dart';

void main() => runApp(const Donations());

class Donations extends StatelessWidget {
  const Donations({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donaciones'),
      ),
      body: Stack(
        children: [
          // Background
          theme != Preferences.isDarkmode
              ? const Background2()
              : const Background(),
          // Home depending
          _Don()
        ],
      ),
    );
  }
}

class _Don extends StatelessWidget {
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
