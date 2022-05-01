import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/function_chat/pages/chat_page.dart';
import 'package:flutter_app_hellorelax/function_chat/pages/loading_page.dart';
import 'package:flutter_app_hellorelax/function_chat/pages/login_page.dart';
import 'package:flutter_app_hellorelax/function_chat/pages/register_page.dart';
import 'package:flutter_app_hellorelax/function_chat/pages/usuarios_page.dart';
import 'package:flutter_app_hellorelax/screens/all_screens.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => const UsuariosPage(),
  'chat': (_) => const ChatPage(),
  'loading': (_) => const LoadingPage(),
  'login': (_) => const LoginPage(),
  'register': (_) => const RegisterPage(),
  'homescreen': (_) => const HomeScreen(),
};
