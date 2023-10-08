import 'package:flutter/material.dart';
// import '../Screen/Home_Page.dart';
import '../Pages/Vehicule_Registration.dart';
import '../Opt.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edificio Leslie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Op(),
    );
  }
}
