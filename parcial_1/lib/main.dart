import 'package:flutter/material.dart';
import 'screens/salon_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parcial 1',
      home: SalonListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
