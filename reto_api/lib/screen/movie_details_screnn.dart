import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MovieDetailsScreen extends StatelessWidget {
  final int movieId;

  MovieDetailsScreen({required this.movieId});

  Future<Map<String, dynamic>> fetchMovieDetails(int movieId) async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$movieId?api_key=a4b7f1f59915fa14238532d725232d0b&language=es-ES'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to load movie details');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: fetchMovieDetails(movieId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          final movieDetails = snapshot.data;

          final String title = movieDetails?['title'] ??
              'Detalles de la película no disponibles';
          final String posterPath = movieDetails?['poster_path'] ?? '';
          final String overview =
              movieDetails?['overview'] ?? 'Sin sinopsis disponible';
          final List<dynamic> genres = movieDetails?['genres'] ?? [];
          final String releaseDate =
              movieDetails?['release_date'] ?? 'Año desconocido';

          return Scaffold(
            appBar: AppBar(
              title: Center(child: Text(title)),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network('https://image.tmdb.org/t/p/w500/$posterPath'),
                  SizedBox(height: 16),
                  Text(
                    'Sinopsis:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    overview,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Géneros:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 8,
                    children: genres
                        .map((genre) => Chip(label: Text(genre['name'])))
                        .toList(),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Año de lanzamiento:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    releaseDate,
                    style: TextStyle(fontSize: 16),
                  ),
                  // Puedes agregar más detalles aquí si quieres
                ],
              ),
            ),
          );
        }
      },
    );
  }
}