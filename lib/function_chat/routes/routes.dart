import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/function_chat/pages/chat_page.dart';
import 'package:flutter_app_hellorelax/function_chat/pages/loading_page.dart';
import 'package:flutter_app_hellorelax/function_chat/pages/login_page.dart';
import 'package:flutter_app_hellorelax/function_chat/pages/register_page.dart';
import 'package:flutter_app_hellorelax/function_chat/pages/usuarios_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => UsuariosPage(),
  'chat': (_) => ChatPage(),
  'loading': (_) => const LoadingPage(),
  'login': (_) => const LoginPage(),
  'register': (_) => const RegisterPage(),
};
