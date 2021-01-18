import 'package:flutter/material.dart';
import 'package:libreria/widgets/menu_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Libreria Online',
            style: TextStyle(color: Colors.orange),
          ),
          actions: [
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          ],
        ),
        drawer: MenuWidget(),
        body: Stack(
          children: [
            _fondoApp(),
            Container(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  'Bienvenidos',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
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
}
