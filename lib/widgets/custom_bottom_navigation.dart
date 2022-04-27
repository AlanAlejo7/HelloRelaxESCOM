// import 'package:flutter/material.dart';

// class CustomBottomNavigation extends StatefulWidget {
//   const CustomBottomNavigation({Key? key}) : super(key: key);

//   @override
//   State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
// }

// class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
//   int _paginaActual = 0;

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       onTap: (index) {
//         setState(() {
//           _paginaActual = index;
//         });
//       },
//       showUnselectedLabels: false,
//       selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
//       backgroundColor: const Color.fromARGB(255, 105, 166, 206),
//       unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
//       currentIndex: _paginaActual,
//       items: const [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.remove_red_eye_sharp), label: 'Relax'),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle), label: 'Usuario'),
//       ],
//     );
//   }
// }
