import 'package:flutter/material.dart';
import 'package:coffe_shop_ui/widgets/items_widget.dart';
import 'package:coffe_shop_ui/widgets/home_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);

    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //es un contenedor visual
      body: SafeArea(
        //es donde se coloca el contenido principal de la pantalla.
        child: Padding(
          //para agregar espacios alrededor de otros widgets.
          padding: EdgeInsets.only(
              top:
                  15), //el espacio o relleno alrededor de un widget en particular.
          child: ListView(
            //para crear una lista de elementos desplazables
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, //el primer elemento se alineará al inicio del eje principal y el último elemento se alineará al final.
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white.withOpacity(
                            0.5), //aplicando un color blanco con una opacidad del 50% al widget
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: Text(
                    "It's a Great Day For Coffe",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight
                          .w500, //especificar el grosor de la fuente que se aplicará a un texto dentro de un widget
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context)
                    .size
                    .width, //establecer el ancho de un widget a la anchura actual de la pantalla del dispositivo
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  //para aplicar bordes, sombras, esquinas redondeadas, gradientes de color
                  color: Color.fromARGB(255, 50, 54, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    //personalizar la apariencia visual de un widget de entrada de datos
                    border: InputBorder
                        .none, //indicando que el widget no debe tener ningún borde visible.
                    hintText: "Find your coffe", //texto
                    hintStyle: TextStyle(
                      //para definir el estilo del texto
                      color: Colors.white.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              //El tabBar se utiliza para crear una barra de pestañas que permite al usuario
              //navegar entre diferentes secciones o pestañas en una aplicación.
              //Se utiliza comúnmente junto con TabBarView para mostrar el contenido asociado con cada pestaña.
              TabBar(
                  controller: _tabController,
                  labelColor: Color(0xFFE57734),
                  unselectedLabelColor: Colors.white.withOpacity(0.5),
                  isScrollable: true, //desplazar la barra de pestañas
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color(0xFFE57734),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  //Este código se usa comúnmente para crear una barra de pestañas (o tabs)
                  //en la parte superior de una interfaz de usuario,
                  //donde los usuarios pueden alternar entre diferentes categorías o secciones de contenido.
                  labelStyle: //se utiliza para establecer el estilo de texto de las etiquetas de las pestañas.
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  labelPadding: EdgeInsets.symmetric(
                      horizontal:
                          20), // se utiliza para establecer el relleno alrededor del texto de las etiquetas
                  tabs: [
                    //contiene una lista de Tab widgets, donde cada uno representa una pestaña en el
                    Tab(text: "Hot Coffee"),
                    Tab(text: "Cold Coffee"),
                    Tab(text: "Cappuccino"),
                    Tab(text: "Americano"),
                  ]),
              SizedBox(
                height: 10,
              ),
              Center(
                child: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ][_tabController.index],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
