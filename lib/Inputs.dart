import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Inputs extends StatefulWidget {
  final String labelNombre;
  final Icon icono;
  final String ayuda;
  const Inputs({required this.labelNombre, required this.icono, required this.ayuda, super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    print(widget.labelNombre);
    return Center(
    
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextField(
            keyboardType: TextInputType.multiline,
            //maximo de lineas
            // maxLines: 3,
            //Maximo de letras
            maxLength: 100,
            //Cada letra iniciara en mayuscula 'capitalizacion'
            // textCapitalization: TextCapitalization.words,
            //para centrar el texto
            // textAlign: TextAlign.center,
            //Para esconder las letras
            // obscureText: true,
            //para ponerle un caracter que yo quiera a las claves
            // obscuringCharacter: '*',
            //es para que el cursor se ponga directamente en este campo, solo se puede poner en uno solo
            // autofocus: true,
            //es para hacerlo redondo, basicamente darle estilo
            cursorRadius: Radius.circular(20),
            //estilo al texto
            style: TextStyle(fontSize: 15, color: Colors.blueGrey),
            //autocorrector, no se pone con una contraseña
            autocorrect: false,
            //cuando solo queremos que lo lea y no modifique
            // readOnly: true,
            //CAMBIAR EL COLOR DEL TECLADO
            // keyboardAppearance: Brightness.dark,
            decoration: InputDecoration(
              //los 2 siguientes es para poner dentro y arriba pero hay uno mejor que es el label text que hace las 2
              // label: Text("Nombre"),
              // hintText: 'Nombre',
              icon: widget.icono,
              iconColor: Colors.black,
              //basicamente hace lo mismo que label y hintext juntos
              labelText: widget.labelNombre,
              //darle estilo al label
              labelStyle: TextStyle(color: Colors.black),
              helperText: widget.ayuda,
              //para mandar un error basicamente, actualmente no nos sirve de nada
              // errorText: 'No puede ir vacio',
              //se utiliza para animacion de los label
              // isCollapsed: true,
              //es el padding
              contentPadding: EdgeInsets.all(5),
              //ponerle un icon a la izquierda
              prefixIcon: Icon(Icons.lock_open_rounded),
              //es para poner un icono al picarle al texto.
              // prefix: Icon(Icons.home),
              //icono a la derecha
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              //configuracion del borde como los border radius
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              //cambiar el tamaño de inputtext
              disabledBorder: UnderlineInputBorder(),
              constraints: BoxConstraints(
                maxWidth: 400,
              ),
              //
              //
              //
              //
              //
            ),
          ),
          
        ),
      ),
    );
  
  }
}
