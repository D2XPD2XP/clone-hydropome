import 'package:clone_hydropome/screens/list_tanaman_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> screenOptions = <Widget>[
    Scaffold(backgroundColor: Colors.white),
    ListTanamanPage(),
    Scaffold(backgroundColor: Colors.white),
    Scaffold(backgroundColor: Colors.white),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenOptions[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 95,
        child: BottomNavigationBar(
          selectedFontSize: 12,
          unselectedFontSize: 12,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/home_icon.png',
                color: _selectedIndex == 0
                    ? Color(0xFF179778)
                    : Color(0xFF98A0AA),
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                width: 24,
                height: 24,
                'assets/logo_plant.png',
                color: _selectedIndex == 1
                    ? Color(0xFF179778)
                    : Color(0xFF98A0AA),
              ),
              label: 'Pantau Tanaman',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/bag_icon.png',
                color: _selectedIndex == 2
                    ? Color(0xFF179778)
                    : Color(0xFF98A0AA),
              ),
              label: 'Marketplace',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/profile_icon.png',
                color: _selectedIndex == 3
                    ? Color(0xFF179778)
                    : Color(0xFF98A0AA),
              ),
              label: 'Profil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF179778),
          unselectedItemColor: Color(0xFF98A0AA),
          showUnselectedLabels: true,
          onTap: onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
