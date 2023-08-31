import 'package:flutter/material.dart';
import '../models/welcome.dart';
import '../screens/salon_details_screen.dart'; // Asegura que la ruta sea correcta

class SalonCard extends StatelessWidget {
  final Welcome salon;

  SalonCard(this.salon);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(salon.razonSocial),
        subtitle: Text(salon.direccionComercial),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          // Navegar a la pantalla de detalles del salón
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => SalonDetailsScreen(salon),
          ));
        },
      ),
    );
  }
}
