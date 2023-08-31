import 'package:flutter/material.dart';
import '../models/welcome.dart';

class SalonDetailsScreen extends StatelessWidget {
  final Welcome salon;

  SalonDetailsScreen(this.salon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(salon.razonSocial),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dirección: ${salon.direccionComercial}'),
            // Agrega más detalles aquí
          ],
        ),
        
      ),
    );
  }
}
