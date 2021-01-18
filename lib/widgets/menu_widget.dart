import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            trailing: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home');
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.party_mode,
              color: Colors.blue,
            ),
            title: Text('Party Mode'),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(
              Icons.people,
              color: Colors.blue,
            ),
            title: Text('People'),
            onTap: () {},
          ),
          ListTile(
            trailing: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '');
            },
          ),
        ],
      ),
    );
  }
}
