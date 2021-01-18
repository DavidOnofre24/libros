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
        title: Text('Home'),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      drawer: MenuWidget(),
    );
  }
}
