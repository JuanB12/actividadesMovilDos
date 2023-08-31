import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Models/welcome.dart';

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
        title: Text(
          'Peluquerías y Salones',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: welcomeList == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: welcomeList.length,
              itemBuilder: (ctx, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color.fromARGB(255, 127, 200, 250),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16),
                    title: Text(
                      welcomeList[index].razonSocial,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 8),
                        Text(
                          "Nit: ${welcomeList[index].nitPropietario}",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "Barrio: ${welcomeList[index].barrioComercial}",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "Email_Propietario: ${welcomeList[index].emailPropietario}",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
