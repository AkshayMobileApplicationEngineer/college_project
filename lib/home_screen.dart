import 'package:flutter/material.dart';
import 'drawer.dart'; // Import the drawer widget
import 'profile_screen.dart'; // Import the profile screen widget

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Container(color: Colors.blue), // Home screen content
    Container(color: Colors.green), // Profile screen content
    Container(color: Colors.red), // Settings screen content
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String username = 'John Doe';
    String email = 'john.doe@example.com';
    String mobile = '123-456-7890';

    return Scaffold(
      appBar: _buildAppBar(),
      drawer: AppDrawer(username: username, email: email), // Use the AppDrawer widget
      body: _children[_currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Home',style: TextStyle(color: Colors.white)),
      centerTitle: true,
      backgroundColor: Colors.deepPurple[400],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}