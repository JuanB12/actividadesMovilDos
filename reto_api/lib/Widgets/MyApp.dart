import 'package:flutter/material.dart';
import '../screen/Movie_Pages.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Películas App',
      home: MoviesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
