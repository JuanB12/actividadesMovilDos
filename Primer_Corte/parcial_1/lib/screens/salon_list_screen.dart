import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Models/welcome.dart';

class SalonListScreen extends StatefulWidget {
  @override
  _SalonListScreenState createState() => _SalonListScreenState();
}

class _SalonListScreenState extends State<SalonListScreen> {
  // Lista de la clase Welcome que contiene todos los datos del JSON
  late List<Welcome> welcomeList;

  //Contructor que inicializa el estado
  @override
  void initState() {
    super.initState();
    fetchSalons();
  }

  // Consumo del Api e inicializador de estado con .toList()
  Future<void> fetchSalons() async {
    final response = await http
        .get(Uri.parse('https://www.datos.gov.co/resource/e27n-di57.json'));
    final List<dynamic> responseData = json.decode(response.body);

    setState(() {
      welcomeList = responseData.map((json) => Welcome.fromJson(json)).toList();
    });
  }

  //Screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Salones y Peluquerías',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true, //Centrar el titulo
        backgroundColor: Colors.teal,
      ),
      body: welcomeList == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: welcomeList.length,
              itemBuilder: (ctx, index) => GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  // Lista de datos
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16),
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal,
                      // Agregación del icono
                      child: Icon(
                        Icons.store,
                        color: Colors.white,
                      ),
                    ),
                    // Titulo por cada ListTitle
                    title: Text(
                      welcomeList[index].razonSocial,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                        fontSize: 18,
                      ),
                    ),
                    // Columna donde se agregan los datos a mostrar
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 8),
                        Text(
                          "Nit: ${welcomeList[index].nitPropietario}",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Barrio: ${welcomeList[index].barrioComercial}",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Email: ${welcomeList[index].emailPropietario}",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
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
