// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class MoviesScreen extends StatefulWidget {
//   @override
//   _MoviesScreenState createState() => _MoviesScreenState();
// }

// class _MoviesScreenState extends State<MoviesScreen> {
//   List<dynamic> movies = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchMovies();
//   }

//   Future<void> fetchMovies() async {
//     final response = await http.get(Uri.parse(
//         'https://api.themoviedb.org/3/movie/now_playing?api_key=a4b7f1f59915fa14238532d725232d0b&language=en-US'));

//     if (response.statusCode == 200) {
//       final Map<String, dynamic> data = json.decode(response.body);
//       setState(() {
//         movies = data['results'];
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text(
//             'Películas Ahora',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 24,
//             ),
//           ),
//         ),
//       ),
//       backgroundColor: Colors.grey[200], // Cambia el color de fondo
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//           ),
//           itemCount: movies.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         _MovieDetailsScreen(movieId: movies[index]['id']),
//                   ),
//                 );
//               },
//               child: Card(
//                 elevation: 5, // Agrega una sombra
//                 child: Column(
//                   children: [
//                     Flexible(
//                       child: Image.network(
//                         'https://image.tmdb.org/t/p/w500/${movies[index]['poster_path']}',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Text(
//                       movies[index]['title'],
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class _MovieDetailsScreen extends StatelessWidget {
//   final int movieId;

//   _MovieDetailsScreen({required this.movieId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Detalles de la Película',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//       ),
//       body: Center(
//         child: Text(
//           'Detalles de la película con el ID: $movieId',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
