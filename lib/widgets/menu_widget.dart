import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 100,
          ),
          ListTile(
            title: Text(
              'Libreria',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home');
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: Text('Registrar libro'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'libro');
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.party_mode,
              color: Colors.blue,
            ),
            title: Text('Consultar libros'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'consultar');
            },
          ),
        ],
      ),
    );
  }
}
