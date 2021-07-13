import 'package:flutter/material.dart';
import '';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  void _goToScreen(String label){
    Navigator.pushNamed(context, "style");
  }

  Widget _menuItem(String label, IconData icon, Function function){
    return GestureDetector(
      onTap: () => function(label),
      child: ListTile(
        leading: Icon(icon),
        title: Text(label),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            _menuItem("Home", Icons.home, _goToScreen),
            _menuItem("Home", Icons.home, _goToScreen),
            _menuItem("Home", Icons.home, _goToScreen),
            _menuItem("Home", Icons.home, _goToScreen),
            Divider(),
            _menuItem("Home", Icons.home, _goToScreen),
          ],
        )
    );
  }
}