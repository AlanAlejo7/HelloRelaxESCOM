import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/function_chat/helpers/mostrar_alerta.dart';
import 'package:flutter_app_hellorelax/function_chat/services/auth_service.dart';
import 'package:flutter_app_hellorelax/function_chat/widgets/boton_azul.dart';
import 'package:flutter_app_hellorelax/function_chat/widgets/custom_input.dart';
import 'package:flutter_app_hellorelax/function_chat/widgets/labels.dart';
import 'package:flutter_app_hellorelax/function_chat/widgets/logo.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Logo(titulo: 'Registro'),
                  _Form(),
                  const Labels(
                    ruta: 'login',
                    titulo: '¿Ya tienes una cuenta?',
                    subTitulo: 'Ingresa ahora!',
                  ),
                  const Text(
                    'Términos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passCtrl,
            isPassword: true,
          ),
          BotonAzul(
            text: 'Crear cuenta',
            onPressed: authService.autenticando
                ? () => {}
                : () async {
                    print(nameCtrl.text);
                    print(emailCtrl.text);
                    print(passCtrl.text);
                    final registroOk = await authService.register(
                        nameCtrl.text.trim(),
                        emailCtrl.text.trim(),
                        passCtrl.text.trim());

                    if (registroOk == true) {
                      // ignore: todo
                      //  TODO: Conectar socket server
                      Navigator.pushReplacementNamed(context, 'homescreen');
                    } else {
                      mostrarAlerta(context, 'Registro incorrecto', registroOk);
                    }
                  },
          )
        ],
      ),
    );
  }
}
