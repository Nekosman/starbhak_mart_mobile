import 'package:asesmen_starbhak_mart/add.dart';
import 'package:asesmen_starbhak_mart/cart.dart';
import 'package:asesmen_starbhak_mart/home.dart';
import 'package:asesmen_starbhak_mart/list.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[Home(), Cart(), AddData(), ListPage()];

  void _OnItemTap(int Index) {
    setState(() {
      _selectedIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromARGB(255, 3, 48, 133),
        buttonBackgroundColor: const Color.fromARGB(255, 49, 155, 242),
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.shopping_cart, size: 30),
          Icon(Icons.add_chart_outlined, size: 30),
        ],
        onTap: _OnItemTap,
      ),
    );
  }
}
