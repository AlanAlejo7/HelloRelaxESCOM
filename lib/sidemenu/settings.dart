import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/providers/theme_provider.dart';
import 'package:flutter_app_hellorelax/screens/all_screens.dart';
import 'package:flutter_app_hellorelax/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

void main() => runApp(const Settings());

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ajustes',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
              const Divider(),
              SwitchListTile.adaptive(
                  value: Preferences.isDarkmode,
                  title:
                      const Text('Modo Oscuro', style: TextStyle(fontSize: 16)),
                  onChanged: (value) {
                    Preferences.isDarkmode = value;
                    final themeProvider =
                        Provider.of<ThemeProvider>(context, listen: false);

                    value
                        ? themeProvider.setDarkmode()
                        : themeProvider.setLightMode();

                    setState(() {});
                  }),
              const Divider(),
              RadioListTile<int>(
                  value: 1,
                  groupValue: Preferences.gender,
                  title: const Text('Masculino',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
                  onChanged: (value) {
                    Preferences.gender = value ?? 1;
                    setState(() {});
                  }),
              const Divider(),
              RadioListTile<int>(
                  value: 2,
                  groupValue: Preferences.gender,
                  title: const Text('Femenino', style: TextStyle(fontSize: 16)),
                  onChanged: (value) {
                    Preferences.gender = value ?? 2;
                    setState(() {});
                  }),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: Preferences.name,
                  onChanged: (value) {
                    Preferences.name = value;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                      labelText: 'Nombre', helperText: 'Nombre del usuario'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: Preferences.nickname,
                  onChanged: (value) {
                    Preferences.nickname = value;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                      labelText: 'Apodo', helperText: 'Apodo del usuario'),
                ),
              ),
              const Divider(),
              Form(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          final route = MaterialPageRoute(
                              builder: (context) => const HomeScreen());
                          Navigator.push(context, route);
                        },
                        child: const Text('Guardar Cambios'),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
