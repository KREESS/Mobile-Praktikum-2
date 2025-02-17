import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard/statistic_screen.dart';
import 'package:flutter_application_1/screens/dashboard/film_screen.dart'; // Import FilmScreen

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  // Halaman yang ditampilkan berdasarkan tab yang dipilih
  static const List<Widget> _pages = <Widget>[
    StatisticScreen(), // Home page
    FilmScreen(), // Film page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menggunakan IndexedStack untuk menampilkan halaman yang sesuai
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Film',
          ),
        ],
      ),
    );
  }
}
