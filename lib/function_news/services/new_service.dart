import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/function_news/models/category_model.dart';
import 'package:flutter_app_hellorelax/function_news/models/new_models.dart';
import 'package:http/http.dart' as http;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final _URL_NEWS = 'https://newsapi.org/v2';
final _APIKEY = '0fd449a89910463fb4c516f6fc7a92de';

class NewsService with ChangeNotifier {
  List<Article> headlines = [];

  String _selectedCategory = 'general';

  bool _isLoading = true;

  List<Category> categories = [
    Category(FontAwesomeIcons.building, 'negocios'),
    Category(FontAwesomeIcons.tv, 'entretenimiento'),
    Category(FontAwesomeIcons.addressCard, 'general'),
    Category(FontAwesomeIcons.headSideVirus, 'Salud'),
    Category(FontAwesomeIcons.volleyballBall, 'deportes'),
    Category(FontAwesomeIcons.vials, 'Ciencia'),
    Category(FontAwesomeIcons.memory, 'Tecnologia'),
  ];

  Map<String, List<Article>> categoryArticles = {};

  NewsService() {
    getTopHeadlines();

    categories.forEach((item) {
      categoryArticles[item.name] = List.empty(growable: true);
    });

    getArticleByCategory(_selectedCategory);
  }

  bool get isLoading => _isLoading;

  String get selectedCategory => _selectedCategory;
  set selectedCategory(dynamic valor) {
    _selectedCategory = valor;
    _isLoading = true;
    getArticleByCategory(valor);
    notifyListeners();
  }

  List<Article> get getArticulosCategoriaSeleccionada =>
      categoryArticles[selectedCategory]!;

  getTopHeadlines() async {
    var url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=mx&category=health&apiKey=0fd449a89910463fb4c516f6fc7a92de');
    final resp = await http.get(url);

    final newsResponse = NewsResponse.fromJson(resp.body);

    headlines.addAll(newsResponse.articles);
    notifyListeners();
  }

  getArticleByCategory(String category) async {
    if (categoryArticles[category]!.isNotEmpty) {
      _isLoading = false;
      notifyListeners();
      return categoryArticles[category];
    }

    var url = Uri.parse(
        '$_URL_NEWS/top-headlines?apiKey=$_APIKEY&country=us&category=$category');
    final resp = await http.get(url);
    final newsResponse = NewsResponse.fromJson(resp.body);
    categoryArticles[category]!.addAll(newsResponse.articles);
    notifyListeners();
  }
}
