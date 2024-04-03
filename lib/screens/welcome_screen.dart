import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

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
          ],
        ),
      ),
    );
  }
}
