import 'package:flutter/material.dart';
import 'Admin_Register.dart';

class VerificacionAdministrador extends StatelessWidget {
  const VerificacionAdministrador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              height: 100,
              child: Stack(
                children: [
                  Positioned(
                    left: 80,
                    top: 16,
                    child: SizedBox(
                      width: 250,
                      height: 100,
                      child: Text(
                        'Hola Administrador',
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
                ],
              ),
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
                      'Verificación',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xfff9f7f7),
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Usuario',
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
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Contraseña',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xfff9f7f7),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14, bottom: 14),
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
                  MaterialButton(
                    elevation: 0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminitradorRegistro(),
                        ),
                      );
                    },
                    child: Text(
                      'Registrar carro',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xfff9f7f7),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    alignment: Alignment.center,
                    child: MaterialButton(
                      elevation: 0,
                      minWidth: 169,
                      height: 66,
                      color: Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Verificar",
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
