import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Models/model.dart';

class SalonListScreen extends StatefulWidget {
  @override
  _SalonListScreenState createState() => _SalonListScreenState();
}

class _SalonListScreenState extends State<SalonListScreen> {
  late List<Welcome> welcomeList;

  @override
  void initState() {
    super.initState();
    fetchSalons();
  }

  Future<void> fetchSalons() async {
    final response = await http
        .get(Uri.parse('https://www.datos.gov.co/resource/e27n-di57.json'));
    final List<dynamic> responseData = json.decode(response.body);

    setState(() {
      welcomeList = responseData.map((json) => Welcome.fromJson(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Peluquerías y Salones')),
      ),
      body: welcomeList == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: welcomeList.length,
              itemBuilder: (ctx, index) => ListTile(
                title: Text(welcomeList[index].razonSocial),
                subtitle: Text(welcomeList[index].direccionComercial),
                // Email: Text(welcomeList[index].emailComercial),
                // ... Otros detalles que quieras mostrar en la lista
              ),
            ),
    );
  }
}
