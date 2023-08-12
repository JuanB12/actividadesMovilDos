import 'package:flutter/material.dart';
import 'package:infinity_scroll/Screen/Gifs_Pages.dart';

import '../Screen/Gifs_Pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actividad Infinite Scroll',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: GifPages(title: 'Infinite Scroll - Juan Barrios'),
      debugShowCheckedModeBanner: false,
    );
  }
}
