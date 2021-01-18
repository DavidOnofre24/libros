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
          title: Text('Libreria Online'),
          actions: [
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          ],
        ),
        drawer: MenuWidget(),
        body: Stack(
          children: [
            _fondoApp(),
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
