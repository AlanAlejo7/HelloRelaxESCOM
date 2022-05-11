import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/function_news/models/new_models.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ListaNoticias extends StatelessWidget {
  final List<Article> noticias;

  const ListaNoticias(this.noticias);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (BuildContext context, int index) {
          return _Noticia(
            noticia: noticias[index],
            index: index,
          );
        });
  }
}

class _Noticia extends StatelessWidget {
  final Article noticia;
  final int index;

  const _Noticia({
    required this.noticia,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _TarjetaTopBar(noticia, index),
        _TarjetaTitulo(noticia),
        _TarjetaImagen(noticia),
        _TarjetaBody(noticia),
        _TarjetaBotones(noticia: noticia),
        const SizedBox(height: 20),
        const Divider(),
      ],
    );
  }
}

class _TarjetaTopBar extends StatelessWidget {
  final Article noticia;
  final int index;

  const _TarjetaTopBar(this.noticia, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Text(
            '${index + 1}.- ',
            style: const TextStyle(color: Colors.blueAccent),
          ),
          Text('${noticia.source.name}. '),
        ],
      ),
    );
  }
}

class _TarjetaTitulo extends StatelessWidget {
  final Article noticia;

  const _TarjetaTitulo(this.noticia);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        noticia.title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class _TarjetaImagen extends StatelessWidget {
  final Article noticia;

  const _TarjetaImagen(this.noticia);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        child: Container(
            // ignore: unnecessary_null_comparison
            child: ('${noticia.urlToImage}' != null)
                ? FadeInImage(
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Container(
                          width: 300,
                          height: 250,
                          child: const Image(
                              image: AssetImage('assets/no-image.png')));
                    },
                    placeholder: const AssetImage('assets/giphy.gif'),
                    image: NetworkImage('${noticia.urlToImage}'),
                  )
                : const Image(image: AssetImage('assets/no-image.png'))),
      ),
    );
  }
}

class _TarjetaBody extends StatelessWidget {
  final Article noticia;

  const _TarjetaBody(this.noticia);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child:
          Text('${(noticia.description != null) ? noticia.description : ''}. '),
    );
  }
}

class _TarjetaBotones extends StatelessWidget {
  final Article noticia;

  const _TarjetaBotones({
    required this.noticia,
  });

  launchURLBrowser() {
    launch(noticia.url);
  }

  launchURLApp() {
    launch(noticia.url, forceSafariVC: false, forceWebView: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Abrir desde'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RawMaterialButton(
              onPressed: launchURLApp,
              fillColor: const Color.fromARGB(143, 33, 149, 243),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: const Icon(Icons.app_blocking),
            ),
            const SizedBox(width: 10),
            RawMaterialButton(
              fillColor: const Color.fromARGB(153, 244, 67, 54),
              onPressed: launchURLBrowser,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: const Icon(Icons.web),
            ),
          ],
        )
      ],
    );
  }
}
