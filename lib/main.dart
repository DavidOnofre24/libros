import 'package:flutter/material.dart';
import 'package:libreria/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      theme: ThemeData(primaryColor: Color.fromRGBO(62, 10, 122, 1)),
      routes: {
        'home': (BuildContext context) => HomePage(),
      },
    );
  }
}
