import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 193, 221, 247);
  static const Color second = Colors.blue;

  // ignore: constant_identifier_names
  static const Color gradiente_up = Color.fromARGB(255, 255, 255, 255);
  // ignore: constant_identifier_names
  static const Color gradiente_down = Color.fromARGB(255, 105, 166, 206);

  static final ThemeData lightheme = ThemeData.light().copyWith(
    primaryColorDark: Colors.blue,
    primaryColor: Colors.white,
    primaryColorLight: Colors.white,
    // scaffoldBackgroundColor: Colors.amber,
    appBarTheme: const AppBarTheme(
        color: Color.fromARGB(255, 105, 166, 206), elevation: 0),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color.fromARGB(255, 0, 0, 0),
      backgroundColor: Color.fromARGB(255, 105, 166, 206),
      unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
    ),
    drawerTheme: const DrawerThemeData(
        backgroundColor: Color.fromARGB(255, 127, 172, 202),
        scrimColor: Color.fromARGB(141, 238, 238, 238)),
    listTileTheme:
        const ListTileThemeData(iconColor: Color.fromARGB(255, 255, 255, 255)),
    splashColor: const Color.fromRGBO(62, 67, 107, 0.1),
  );
}
