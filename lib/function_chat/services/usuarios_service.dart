import 'package:http/http.dart' as http;

import 'package:flutter_app_hellorelax/function_chat/global/enviroment.dart';
import 'package:flutter_app_hellorelax/function_chat/models/usuario.dart';
import 'package:flutter_app_hellorelax/function_chat/models/usuarios_response.dart';
import 'package:flutter_app_hellorelax/function_chat/services/auth_service.dart';

class UsuariosService {
  Future<List<Usuario>> getUsuarios() async {
    String? token = await AuthService.getToken();
    try {
      final resp = await http.get(Uri.parse('${Environment.apiUrl}/usuarios'),
          headers: {
            'Content-Type': 'application/json',
            'x-Token': token.toString()
          });

      final usuariosResponse = usuariosResponseFromJson(resp.body);

      return usuariosResponse.usuarios;
    } catch (e) {
      return [];
    }
  }
}
