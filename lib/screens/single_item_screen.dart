import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  String img;
  SingleItemScreen(this.img);  //es una clase que extiende StatelessWidget y recibe una cadena de texto 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(   //Esto permite que la pantalla sea desplazable verticalmente cuando el contenido excede el tamaño de la pantalla.
        child: SafeArea(  //manejar dispositivos con diferentes tamaños y formas de pantalla.
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),  // utiliza para agregar un relleno específico a un widget 
            child: Column(    //organiza sus widgets secundarios en una columna vertical
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),  //se utiliza para aplicar un relleno específico solo en el lado izquierdo de un widget 
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context); // para cerrar la pantalla actual y volver a la pantalla anterior en el historial de navegación
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new, //representa una flecha hacia atrás utilizada comúnmente para indicar la navegación de retorno en las aplicaciones.
                      color: Colors.white.withOpacity(0.5),//ara crear un color semi-transparente a partir de un color sólido. 
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Center(  //se utiliza para centrar el widget hijo, que en este caso es una imagen.
                  child: Image.asset( //carga una imagen desde la carpeta "images" 
                    "images/$img.png",
                    width: MediaQuery.of(context).size.width / 1.2, //establece el ancho de la imagen al 80% del ancho de la pantalla
                  ),
                ),
                SizedBox(height: 50), //agrega un espacio vertical de 50 unidades
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( //que tiene un estilo específico, incluyendo un color semi-transparente y un espaciado entre letras
                        "BEST COFFEE",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(height: 20),// agrega un espacio vertical de 20 unidades entre los widgets anteriores 
                      Text(    //la imagen se pone su precio
                        img,
                        style: TextStyle( //muestra el contenido de la variable img, asumiendo que img contiene el precio como texto. 
                          fontSize: 30,
                          letterSpacing: 1,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 25),//agrega un espacio vertical de 25 unidade
                      Container( //tiene un ancho igual al ancho de la pantalla 
                        width: MediaQuery.of(context).size.width,//lo que permite que el Row ocupe todo el ancho disponible.
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                  borderRadius: BorderRadius.circular(20),//crea esquinas redondeadas para el Container con un radio de borde de 20 unidades.
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(  //representa el símbolo de resta (-) y es parte de la biblioteca de iconos de estilo Cupertino
                                      CupertinoIcons.minus,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 15),//esta parte del codigo es para agregarle cantidad al escoger un producto al carrito
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Text(   //n texto legible y con estilo para mostrar el precio en la interfaz de usuario.
                                "\$30.20", //es el precio 
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(height: 20),
                      Text( //tiene un estilo específico con un tamaño de fuente
                       //de 16, un peso de fuente seminegrita (FontWeight.w500) y un color blanco con opacidad del 40% 
                        //que muestra el texto sobre los beneficios del café
                        "Coffee is a major source of antioxidants in the diet.It hast many health benefits",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(// Esta parte nos sirve para mostrar el volumen que tendra nuestro producto 
                        children: [
                          Text(
                            "Volume:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(// esta parte es la continuación de volumen aqui ponemos la cantidad que contiene el producto
                            "60 ml",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 60),
                      Container(
                        width: MediaQuery.of(context).size.width, //obtiene el ancho total de la pantalla en la que se está ejecutando la aplicación
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,//para distribuir de manera uniforme el espacio 
                          children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),//se utiliza para crear márgenes simétricos alrededor de un widget. 
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255,50,54,56),  //crea un color sólido con una opacidad 
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text("Add to Cart"// es el texto que se muestra en el widget Text.
                            ,style: TextStyle(//efine el estilo del texto, incluyendo el color
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,//que el texto aparezca en negrita.
                              letterSpacing: 1,
                            ),),
                          ),
                          Container(   //Container se utiliza para envolver el icono y aplicarle el fondo y el borde redondeado.
                         padding: EdgeInsets.all(20),
                         decoration: BoxDecoration(
                         color: Color(0xFFE57734),
                        borderRadius: BorderRadius.circular(18),
                          ),
                        child:Icon(Icons.favorite_outline, color: Colors.white,//establece el color del ícono como blanco
                        ),
                           
                           ),
                          ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
