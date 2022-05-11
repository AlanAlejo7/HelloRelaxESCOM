import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/function_news/services/new_service.dart';
import 'package:flutter_app_hellorelax/function_news/widgets/lista_noticias.dart';
import 'package:provider/provider.dart';

class Tab1Page extends StatefulWidget {
  const Tab1Page({Key? key}) : super(key: key);

  @override
  _Tab1PageState createState() => _Tab1PageState();
}

class _Tab1PageState extends State<Tab1Page>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final headlines = Provider.of<NewsService>(context).headlines;

    return Scaffold(
        body: (headlines.isEmpty)
            ? const Center(child: CircularProgressIndicator())
            : ListaNoticias(headlines));
  }

  @override
  bool get wantKeepAlive => true;
}
