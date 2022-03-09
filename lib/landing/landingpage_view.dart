import 'package:flutter/material.dart';
import 'package:traddee/konten/beranda_view.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new BerandaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation());
  }

  Widget _buildBottomNavigation() {
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.home,
            color: Colors.blue[600],
          ),
          icon: new Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text(
            'Beranda',
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.category,
            color: Colors.blue[600],
          ),
          icon: new Icon(
            Icons.category,
            color: Colors.grey,
          ),
          title: new Text('Kategori'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.person,
            color: Colors.blue[600],
          ),
          icon: new Icon(
            Icons.person,
            color: Colors.grey,
          ),
          title: new Text('Merchants'),
        ),
      ],
    );
  }
}
