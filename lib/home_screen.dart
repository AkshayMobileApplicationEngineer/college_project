import 'package:flutter/material.dart';
import 'drawer.dart'; // Import the drawer widget

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String username = 'John Doe';
    String email = 'john.doe@example.com';
    String mobile = '123-456-7890';

    return Scaffold(
      appBar: _buildAppBar(),
      drawer: AppDrawer(username: username, email: email), // Use the AppDrawer widget
      body: _buildBody(username, email, mobile),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Home'),
      centerTitle: true,
      backgroundColor: Colors.deepPurple[400],
    );
  }

  Widget _buildBody(String username, String email, String mobile) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            'Welcome, $username',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 20),
          _buildUserDetails('Email: $email'),
          _buildUserDetails('Phone: $mobile'),
        ],
      ),
    );
  }

  Widget _buildUserDetails(String details) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        details,
        style: const TextStyle(fontSize: 18, color: Colors.deepPurple),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
