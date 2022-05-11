import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/share_preferences/preferences.dart';

void main() => runApp(const PageTitleProfile());

class PageTitleProfile extends StatelessWidget {
  static const String routerName = 'Profile';

  const PageTitleProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(

            // mainAxisAlignment: MainAxisAlignment.center,
            // children: [
            //   Text('Usuario: ${Preferences.name} ',
            //       style: const TextStyle(
            //         fontSize: 30,
            //         fontWeight: FontWeight.bold,
            //       )),
            //   const SizedBox(height: 10),
            //   // const Text('Perfil del usuario',
            //   //     style: TextStyle(
            //   //         fontSize: 16, color: Color.fromARGB(255, 0, 0, 0))),
            //   // Text('Género: ${Preferences.gender}',
            //   //     style: const TextStyle(
            //   //         fontSize: 16, color: Color.fromARGB(255, 0, 0, 0))),
            //   const Divider(),
            //   Text('Apodo: ${Preferences.nickname}',
            //       style: const TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       )),
            //   const Divider(),
            //   // Text('Tema:  ${Preferences.isDarkmode}',
            //   //     style: const TextStyle(
            //   //         fontSize: 16, color: Color.fromARGB(255, 0, 0, 0))),
            //   // const Divider(),
            // ],
            ),
      ),
    );
  }
}
