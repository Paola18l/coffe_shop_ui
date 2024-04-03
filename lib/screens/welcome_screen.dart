import 'package:flutter/material.dart';
//import "package:google_fonts/google_fonts.dart";  checar

class welcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var GoogleFonts;
    return Material(
      child: Container(
        padding: EdgeInsets.only(
            top: 100,
            bottom:
                40), // se utiliza para definir márgenes o rellenos en un widget
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/bug.png"),
            fit: BoxFit
                .cover, // la imagen se ajustará dentro del widget para cubrirlo completamente
            opacity: 0.6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              //vamos al google fonts y copiamos y lo colocamos debajo de cupertino
              "coffee Shop",
              style: GoogleFonts.pacifico(
                fontSize: 50,
                Colors.white,
              ),
            ),
            Column(
              children: [
                Text(
                  "Feeling Low? Take a Sip of Coffee", //ve en la parte de abajo de la página principal
                  style: TextStyle(
                    color: Colors.white.withOpacity(
                        0.8), //está creando un color semi-transparente
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing:
                        1, //controla el espacio entre las letras de un texto.
                  ),
                ),
                SizedBox(
                    height:
                        80), //es un contenedor que se utiliza para agregar espacio vacío o dimensiones fijas
                InkWell(
                  splashColor: Colors
                      .black, //se utiliza para crear un área rectangular que responde a las interacciones del usuario, como toques y pulsaciones
                  onTap:
                      () {}, // es un callback que se ejecuta cuando el usuario toca el área
                  child: Ink(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal:
                              50), //estás definiendo un relleno simétrico en todas las direcciones (arriba, abajo, izquierda y derecha) alrededor del widget al que se aplica.
                      decoration: BoxDecoration(
                        color: Color(
                            0xFFE57734), //se pone de color indicado la barra del centro
                        borderRadius: BorderRadius.circular(
                            10), //todas las esquinas del widget tendrán el mismo radio circular
                      ),
                      child: Text(
                        "Get Start",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
