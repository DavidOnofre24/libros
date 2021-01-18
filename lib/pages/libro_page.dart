import 'package:flutter/material.dart';
import 'package:libreria/widgets/menu_widget.dart';

class LibroPage extends StatefulWidget {
  LibroPage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LibroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Libreria Online'),
          actions: [
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          ],
        ),
        drawer: MenuWidget(),
        body: Stack(
          children: [
            _fondoApp(),
            Column(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 60, left: 40),
                    child: Text(
                      'Registrar libro',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )),
                _crearNombre(),
                _crearNombreAutor(),
                _crearFecha(),
                _crearPrecio(),
                _crearDisponible(),
              ],
            )
          ],
        ));
  }

  Widget _fondoApp() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background-image.png"),
            fit: BoxFit.cover),
      ),
    );
  }

  Widget _crearNombre() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hintText: 'Ejemplo: Libro1',
          labelText: 'Nombre',
        ),
        onChanged: (value) {},
      ),
    );
  }

  _crearNombreAutor() {}

  _crearFecha() {}

  _crearPrecio() {}

  _crearDisponible() {}
}
