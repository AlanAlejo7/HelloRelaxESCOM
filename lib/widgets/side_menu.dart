import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/sidemenu/community.dart';
import 'package:flutter_app_hellorelax/sidemenu/donations.dart';
import 'package:flutter_app_hellorelax/sidemenu/licenses.dart';
import 'package:flutter_app_hellorelax/sidemenu/settings.dart';
import 'package:flutter_app_hellorelax/sidemenu/team.dart';
import 'package:flutter_app_hellorelax/sidemenu/termsofservices.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _drawerheader(),
          ListTile(
            leading: const Icon(Icons.people_alt_outlined),
            title: const Text(
                'Comunidad '), //Que hace la app? Preguntas de la comunidad 'segun xd'
            onTap: () {
              final route =
                  MaterialPageRoute(builder: (context) => const Community());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.price_check),
            title: const Text('Donaciones'), //reglas y terminos
            onTap: () {
              final route =
                  MaterialPageRoute(builder: (context) => const Donations());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configuración'), //preferencias del usuario
            onTap: () {
              final route =
                  MaterialPageRoute(builder: (context) => const Settings());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.precision_manufacturing_outlined),
            title: const Text('Terminos de uso'), //reglas y terminos
            onTap: () {
              final route =
                  MaterialPageRoute(builder: (context) => const Services());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.hail),
            title:
                const Text('Equipo Creativo'), //descripcion general del equipo
            onTap: () {
              final route =
                  MaterialPageRoute(builder: (context) => const Team());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.priority_high_sharp),
            title: const Text('Licencias'), //licencias extendidas por flutter
            onTap: () {
              final route =
                  MaterialPageRoute(builder: (context) => const Licenses());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class _drawerheader extends StatelessWidget {
  const _drawerheader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(
        child: const DrawerHeader(
            child: CircleAvatar(
          backgroundColor: Color.fromARGB(255, 101, 157, 184),
          child: Text('Hello'),
        )),
        color: const Color.fromARGB(0, 26, 163, 131),
      ),

      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage('assets/relax.jpg'),
      //         fit: BoxFit.cover)), //imagen provisional rumbling
    );
  }
}
