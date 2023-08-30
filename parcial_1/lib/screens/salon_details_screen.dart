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
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailItem('Dirección', salon.direccionComercial),
            _buildDetailItem('Teléfono', salon.razonSocial),
            _buildDetailItem('Fecha de Renovación', salon.fechaRenovacion),
            _buildDetailItem('Último Año Renovado', salon.ultimoAORenovado),
            _buildDetailItem('Email', salon.emailComercial),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          content,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
