import 'package:flutter/material.dart';

class AppThemeD {
  static final ThemeData darktheme = ThemeData.dark().copyWith(
    primaryColorDark: const Color.fromARGB(255, 58, 58, 58),
    primaryColor: const Color.fromARGB(255, 161, 161, 161),
    primaryColorLight: const Color.fromARGB(255, 161, 161, 161),
    appBarTheme:
        const AppBarTheme(color: Color.fromARGB(255, 58, 58, 58), elevation: 0),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color.fromARGB(255, 255, 255, 255),
      backgroundColor: Color.fromARGB(255, 58, 58, 58),
      unselectedItemColor: Color.fromARGB(255, 161, 161, 161),
    ),
    drawerTheme: const DrawerThemeData(
        backgroundColor: Color.fromARGB(255, 58, 58, 58),
        scrimColor: Color.fromARGB(141, 255, 255, 255)),
    listTileTheme: const ListTileThemeData(
        iconColor: Color.fromARGB(255, 255, 255, 255),
        textColor: Color.fromARGB(255, 255, 253, 253)),
    splashColor: const Color.fromRGBO(62, 67, 107, 0.1),
    inputDecorationTheme: const InputDecorationTheme(),
  );
}
