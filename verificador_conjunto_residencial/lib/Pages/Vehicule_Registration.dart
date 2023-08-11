import 'package:flutter/material.dart';
import '../Classes/Vehicle .dart';
import '../Classes/VehicleDatabase.dart';

class RegistroVehiculos extends StatelessWidget {
  final _marcaController = TextEditingController();
  final _modeloController = TextEditingController();
  final _placaController = TextEditingController();
  final _tipoController = TextEditingController();
  final _nombreController = TextEditingController();
  final _cedulaController = TextEditingController();
  final String title;

  RegistroVehiculos({super.key, required this.title});

    // Lógica para guardar el registro de vehículo
  void _guardarRegistro() {
    final marca = _marcaController;
    final modelo = _modeloController;
    final placa = _placaController.text;
    final tipo = _tipoController;
    final nombre = _nombreController.text;
    final cedula = _cedulaController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Edificio Leslie"),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _marcaController,
              decoration: InputDecoration(
                labelText: 'Marca',
              ),
            ),
            TextField(
              controller: _modeloController,
              decoration: InputDecoration(
                labelText: 'Modelo',
              ),
            ),
            TextField(
              controller: _placaController,
              decoration: InputDecoration(
                labelText: 'Placa',
              ),
            ),
            TextField(
              controller: _tipoController,
              decoration: InputDecoration(
                labelText: 'Tipo',
              ),
            ),
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
            ),
            TextField(
              controller: _cedulaController,
              decoration: InputDecoration(
                labelText: 'Cédula',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: ElevatedButton(
                onPressed: _guardarRegistro,
                child: Text('Guardar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
