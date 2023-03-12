import 'package:flutter/material.dart';

import 'Inputs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Formulario', style: TextStyle(fontSize: 28) ,
          ),
        ),
      ),
      body: Container(
          child: Column(
        children: [
          Inputs(
            labelNombre: 'Nombre Usuario',
            icono: Icon(Icons.people),
            ayuda: 'En este campo se capturara tu usuario',
          ),
          Inputs(
            labelNombre: 'Direccion',
            icono: Icon(Icons.add_location),
            ayuda: 'En este campo se capturara tu direccion',
          ),
          Inputs(
            labelNombre: 'Telefono',
            icono: Icon(Icons.call),
            ayuda: 'En este campo se capturar tu numero',
          ),
          Inputs(
            labelNombre: 'Correo',
            icono: Icon(Icons.mail),
            ayuda: 'En este campo se capturar tu correo',
          ),
        ],
      )),
    );
  }
}
