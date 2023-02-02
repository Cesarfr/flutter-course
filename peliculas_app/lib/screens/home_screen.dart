import 'package:flutter/material.dart';
import 'package:peliculas_app/search/movie_search_delegate.dart';
import 'package:provider/provider.dart';

import 'package:peliculas_app/widgets/widgets.dart';
import 'package:peliculas_app/providers/movies_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Películas en cines'),
          actions: [
            IconButton(
                onPressed: () => showSearch(
                    context: context, delegate: MovieSearchDelegate()),
                icon: const Icon(Icons.search_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(movies: moviesProvider.onDisplayMovies),

              // Listado horizontal de peliculas
              MovieSlider(
                popularMovies: moviesProvider.popularMovies,
                onNextPage: () => moviesProvider.getPopularMovies(),
                title: 'Populares!!!',
              )
            ],
          ),
        ));
  }
}
