import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:libreria/providers/book_provider.dart';
import 'package:libreria/widgets/menu_widget.dart';

class ConsultarPage extends StatefulWidget {
  ConsultarPage({Key key}) : super(key: key);

  @override
  _ConsultarPageState createState() => _ConsultarPageState();
}

class _ConsultarPageState extends State<ConsultarPage> {
  final _bookprovider = BookProvider();
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
            Container(
                padding: EdgeInsets.only(top: 50, left: 50),
                child: Text(
                  'Libros registrados',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
            _crearCard(),
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

  Widget _crearCard() {
    return Container(
      width: double.infinity,
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text(
                'Libro X',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              subtitle: Text('Dross',
                  style: TextStyle(
                    fontSize: 20,
                  )),
              leading: Icon(
                Icons.import_contacts,
                size: 150,
                color: Colors.black,
              ),
            ),
            Container(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.deepPurple,
                    size: 30,
                  ),
                  label: Text(''),
                  onPressed: () {
                    _bookprovider.getBook();
                  },
                  color: Colors.white,
                ),
                FlatButton.icon(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.orange,
                    size: 30,
                  ),
                  label: Text(''),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
