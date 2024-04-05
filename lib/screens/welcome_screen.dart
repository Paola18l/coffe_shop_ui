import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee_shop_ui/screens/home_screen.dart';

//esta parte del codigo nos permite tener la pagina principal de nuestra app donde le agregamos una imagen de fondo
//un titulo grande centrado ,en la parte de abajo le escibimos un texto ,ademas un boton de acceso 
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

//para controlar la distribución de los elementos a lo largo del eje principal de un widget que organiza a sus hijos de manera lineal, como Row y Column
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
                        0.8),                                                 //está creando un color semi-transparente
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing:
                        1, //controla el espacio entre las letras de un texto.
                  ),
                ),
                //es un contenedor que se utiliza para agregar espacio vacío o dimensiones fijas
                SizedBox(height:80), 
                Material(
                  color: Color(0xFFE57734), 
                   borderRadius: BorderRadius.circular( 10), 
                child: InkWell(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                   builder: (context)=> HomeScreen(),
                  ));
                  },
                  child: Ink(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15 horizontal: 50,)), 
    //estás definiendo un relleno simétrico en todas las direcciones (arriba, abajo, izquierda y derecha) alrededor del widget al que se aplica.
                      decoration: BoxDecoration(
  //se pone de color indicado la barra del centro
                       
  //todas las esquinas del widget tendrán el mismo radio circular
                      ),
                      child: Text(
                        "Get Start", //es el boton de la parte de abajo para ingresar 
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
}
