import 'dart:io';

class Environment {
  static String apiUrl = Platform.isAndroid
      ? 'https://app-hello-rela.herokuapp.com/api'
      : 'http://localhost:3000/api';
  static String socketUrl = Platform.isAndroid
      ? 'https://app-hello-rela.herokuapp.com/'
      : 'http://localhost:3000';
}


//192.168.0.11
//172.19.16.1