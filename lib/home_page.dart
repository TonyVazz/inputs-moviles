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
            'Inputs',
          ),
        ),
      ),
      body: Container(
          child: Column(
        children: [
          Inputs(
            labelNombre: 'Nombre Usuario',
          ),
          Inputs(
            labelNombre: 'Direccion',
          ),
          Inputs(
            labelNombre: 'telefono',
          ),
        ],
      )),
    );
  }
}
