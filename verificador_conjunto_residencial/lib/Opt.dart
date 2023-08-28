import 'package:flutter/material.dart';
import './Pages/Admin/Admin_Login.dart';
import './Pages/Residente/Residente_Register.dart';
class Op extends StatelessWidget {
  const Op({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fondo negro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 85,
              backgroundColor: Color(0xFFD9D9D9),
              child: Icon(
                Icons.home,
                size: 100,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Edificio Leslie',
              style: TextStyle(
                color: Color(0xFFF9F7F7),
                fontSize: 40,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdministradorLogin(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size(277, 66),
              ),
              child: Text(
                "Acceso Administrador",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Residente_Register(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size(277, 66),
              ),
              child: Text(
                "Acceso Propietario",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
