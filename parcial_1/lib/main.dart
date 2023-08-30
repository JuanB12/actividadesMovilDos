import 'package:flutter/material.dart';
import 'screens/salon_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salon de belleza',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SalonListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
