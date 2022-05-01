import 'package:flutter/material.dart';

import 'package:flutter_app_hellorelax/function_chat/pages/usuarios_page.dart';
import 'package:flutter_app_hellorelax/models/cards.dart';
import 'package:flutter_app_hellorelax/share_preferences/preferences.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [_Boton1(), _Boton2()]),
        TableRow(children: [_Boton3(), _Boton4()]),
        TableRow(children: [_Boton5(), _Boton6()]),
        TableRow(children: [_Boton7(), _Boton8()])
      ],
    );
  }
}

bool theme = false;

class _Boton1 extends StatelessWidget {
  const _Boton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        splashColor: const Color.fromRGBO(62, 67, 107, 0.1), // Splash color
        onTap: () {
          final route = MaterialPageRoute(builder: (context) => const News());
          Navigator.push(context, route);
        }, // Handle your onTap here.
        child: theme != Preferences.isDarkmode
            ? const ThemeDark()
            : const ThemeLight(),
      ),
      color: Colors.transparent,
    );
  }
}

class ThemeDark extends StatelessWidget {
  const ThemeDark({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(141, 71, 71, 71), //141, 255, 255, 255
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.newspaper,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Noticias',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ThemeLight extends StatelessWidget {
  const ThemeLight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 221, 247), //255,33,150.
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.newspaper,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Noticias',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _Boton2 extends StatelessWidget {
  const _Boton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        splashColor: const Color.fromRGBO(62, 67, 107, 0.1), // Splash color
        onTap: () {
          final route = MaterialPageRoute(builder: (context) => const Read());
          Navigator.push(context, route);
        }, // Handle your onTap here.
        child: theme != Preferences.isDarkmode
            ? const ThemeDark2()
            : const ThemeLight2(),
      ),
      color: Colors.transparent,
    );
  }
}

class ThemeDark2 extends StatelessWidget {
  const ThemeDark2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(141, 71, 71, 71), //141, 255, 255, 255
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.book_online_outlined,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Lecturas',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ThemeLight2 extends StatelessWidget {
  const ThemeLight2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 221, 247), //255,33,150.
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.book_online_outlined,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Lecturas',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _Boton3 extends StatelessWidget {
  const _Boton3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        splashColor: const Color.fromRGBO(62, 67, 107, 0.1), // Splash color
        onTap: () {
          final route =
              MaterialPageRoute(builder: (context) => const UsuariosPage());
          Navigator.push(context, route);
        }, // Handle your onTap here.
        child: theme != Preferences.isDarkmode
            ? const ThemeDark3()
            : const ThemeLight3(),
      ),
      color: Colors.transparent,
    );
  }
}

class ThemeDark3 extends StatelessWidget {
  const ThemeDark3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(141, 71, 71, 71), //141, 255, 255, 255
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.chat_outlined,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Chat ESCOM',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ThemeLight3 extends StatelessWidget {
  const ThemeLight3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 221, 247), //255,33,150.
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.chat_outlined,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Chat ESCOM',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _Boton4 extends StatelessWidget {
  const _Boton4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        splashColor: const Color.fromRGBO(62, 67, 107, 0.1), // Splash color
        onTap: () {
          final route =
              MaterialPageRoute(builder: (context) => const HelpCenters());
          Navigator.push(context, route);
        }, // Handle your onTap here.
        child: theme != Preferences.isDarkmode
            ? const ThemeDark4()
            : const ThemeLight4(),
      ),
      color: Colors.transparent,
    );
  }
}

class ThemeDark4 extends StatelessWidget {
  const ThemeDark4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(141, 71, 71, 71), //141, 255, 255, 255
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.map_sharp,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Centro de Ayuda',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ThemeLight4 extends StatelessWidget {
  const ThemeLight4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 221, 247), //255,33,150.
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.map_sharp,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Centro de Ayuda',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _Boton5 extends StatelessWidget {
  const _Boton5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        splashColor: const Color.fromRGBO(62, 67, 107, 0.1), // Splash color
        onTap: () {
          final route = MaterialPageRoute(builder: (context) => const Music());
          Navigator.push(context, route);
        }, // Handle your onTap here.
        child: theme != Preferences.isDarkmode
            ? const ThemeDark5()
            : const ThemeLight5(),
      ),
      color: Colors.transparent,
    );
  }
}

class ThemeDark5 extends StatelessWidget {
  const ThemeDark5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(141, 71, 71, 71), //141, 255, 255, 255
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.music_note_outlined,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Música',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ThemeLight5 extends StatelessWidget {
  const ThemeLight5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 221, 247), //255,33,150.
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.music_note_outlined,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Música',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _Boton6 extends StatelessWidget {
  const _Boton6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        splashColor: const Color.fromRGBO(62, 67, 107, 0.1), // Splash color
        onTap: () {
          final route =
              MaterialPageRoute(builder: (context) => const Stadistic());
          Navigator.push(context, route);
        }, // Handle your onTap here.
        child: theme != Preferences.isDarkmode
            ? const ThemeDark6()
            : const ThemeLight6(),
      ),
      color: Colors.transparent,
    );
  }
}

class ThemeDark6 extends StatelessWidget {
  const ThemeDark6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(141, 71, 71, 71), //141, 255, 255, 255
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.analytics_outlined,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Estadísticas',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ThemeLight6 extends StatelessWidget {
  const ThemeLight6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 221, 247), //255,33,150.
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.analytics_outlined,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Estadísticas',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _Boton7 extends StatelessWidget {
  const _Boton7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        splashColor: const Color.fromRGBO(62, 67, 107, 0.1), // Splash color
        onTap: () {
          final route = MaterialPageRoute(builder: (context) => const Scaner());
          Navigator.push(context, route);
        }, // Handle your onTap here.
        child: theme != Preferences.isDarkmode
            ? const ThemeDark7()
            : const ThemeLight7(),
      ),
      color: Colors.transparent,
    );
  }
}

class ThemeDark7 extends StatelessWidget {
  const ThemeDark7({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(141, 71, 71, 71), //141, 255, 255, 255
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.qr_code,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Escanear QR',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ThemeLight7 extends StatelessWidget {
  const ThemeLight7({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 221, 247), //255,33,150.
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.qr_code,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Escanear QR',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _Boton8 extends StatelessWidget {
  const _Boton8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        splashColor: const Color.fromRGBO(62, 67, 107, 0.1), // Splash color
        onTap: () {
          final route = MaterialPageRoute(builder: (context) => const Date());
          Navigator.push(context, route);
        }, // Handle your onTap here.
        child: theme != Preferences.isDarkmode
            ? const ThemeDark8()
            : const ThemeLight8(),
      ),
      color: Colors.transparent,
    );
  }
}

class ThemeDark8 extends StatelessWidget {
  const ThemeDark8({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(141, 71, 71, 71), //141, 255, 255, 255
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.health_and_safety_outlined,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Generar Cita',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ThemeLight8 extends StatelessWidget {
  const ThemeLight8({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 221, 247), //255,33,150.
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              CircleAvatar(
                // backgroundColor: AppTheme.second,
                child: Icon(
                  Icons.health_and_safety_outlined,
                  size: 35,
                ),
                radius: 30,
              ),
              SizedBox(height: 10),
              Text(
                'Generar Cita',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}
