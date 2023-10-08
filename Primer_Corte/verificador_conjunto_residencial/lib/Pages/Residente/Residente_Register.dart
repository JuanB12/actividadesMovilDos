import 'package:flutter/material.dart';


class Residente_Register extends StatelessWidget {
  const Residente_Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(19),
              height: 100,
              child: Stack(children: [
                Positioned(
                  left: 80,
                  top: 16,
                  child: SizedBox(
                    width: 250,
                    height: 100,
                    child: Text(
                      'Hola Residente',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xfff9f7f7),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFFD9D9D9),
                    child: Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 38),
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 42),
                    alignment: Alignment.center,
                    child: Text(
                      'Registro',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xfff9f7f7),
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Marca',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xfff9f7f7),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14, bottom: 30),
                    height: 35,
                    child: TextField(
                      style: TextStyle(fontSize: 9),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD9D9D9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Modelo',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xfff9f7f7),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14, bottom: 30),
                    height: 35,
                    child: TextField(
                      style: TextStyle(fontSize: 9),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD9D9D9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Placa',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xfff9f7f7),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14, bottom: 30),
                    height: 35,
                    child: TextField(
                      style: TextStyle(fontSize: 9),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD9D9D9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Tipo',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xfff9f7f7),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14, bottom: 30),
                    height: 35,
                    child: TextField(
                      style: TextStyle(fontSize: 9),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD9D9D9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Nombre',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xfff9f7f7),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14, bottom: 30),
                    height: 35,
                    child: TextField(
                      style: TextStyle(fontSize: 9),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD9D9D9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Cédula',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xfff9f7f7),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14, bottom: 30),
                    height: 35,
                    child: TextField(
                      style: TextStyle(fontSize: 9),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFD9D9D9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    alignment: Alignment.center,
                    child: MaterialButton(
                      elevation: 0,
                      minWidth: 169,
                      height: 66,
                      color: Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Opt(),
                        //   ),
                        // );
                      },
                      child: Text(
                        "Registrar",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
