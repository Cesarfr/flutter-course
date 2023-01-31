import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:peliculas_app/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = 'a9e25636c971d2dbdc684f7c643dd2fd';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-MX';

  List<Movie> onDisplayMovies = [];

  MoviesProvider() {
    debugPrint('MoviesProvider inicializado');
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '/3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});
    var response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);
    debugPrint('Resultados: ${nowPlayingResponse.results.length.toString()}');
    onDisplayMovies = nowPlayingResponse.results;

    // Notifica a los listeners
    notifyListeners();
  }
}
