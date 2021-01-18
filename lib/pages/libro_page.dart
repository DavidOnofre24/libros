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
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 50, right: 200),
                      child: Text(
                        'Registrar libro',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  _crearNombre(),
                  SizedBox(
                    height: 30,
                  ),
                  _crearNombreAutor(),
                  SizedBox(
                    height: 30,
                  ),
                  _crearFecha(),
                  SizedBox(
                    height: 30,
                  ),
                  _crearPrecio(),
                  SizedBox(
                    height: 20,
                  ),
                  _crearDisponible(),
                  SizedBox(
                    height: 30,
                  ),
                  _crearBoton(),
                ],
              ),
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

  Widget _crearNombreAutor() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Ejemplo: David Onofre',
          labelText: 'Nombre del autor',
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _crearFecha() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Ejemplo: Libro1',
          labelText: 'Fecha de publicacion',
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _crearPrecio() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: '€',
          labelText: 'Precio',
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _crearDisponible() {
    return SwitchListTile(
      value: false,
      title: Text('Disponible'),
      activeColor: Colors.deepPurple,
      onChanged: (value) => setState(() {}),
    );
  }

  Widget _crearBoton() {
    return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
          child: Text('Ingresar'),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        elevation: 0.0,
        color: Colors.deepPurple,
        textColor: Colors.white,
        onPressed: () {});
  }
}
