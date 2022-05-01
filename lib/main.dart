import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_hellorelax/function_chat/routes/routes.dart';
import 'package:flutter_app_hellorelax/function_chat/services/auth_service.dart';
import 'package:flutter_app_hellorelax/function_chat/services/chat_service.dart';
import 'package:flutter_app_hellorelax/function_chat/services/socket_service.dart';
import 'package:flutter_app_hellorelax/providers/theme_provider.dart';
import 'package:flutter_app_hellorelax/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => ThemeProvider(isDarkmode: Preferences.isDarkmode))
    ],
    child: MyApp(),
  ));
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => SocketService()),
        ChangeNotifierProvider(create: (_) => ChatService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hello Relax App',
        initialRoute: 'loading',
        routes: appRoutes,
        theme: Provider.of<ThemeProvider>(context).currentTheme,
      ),
    );
  }
}
