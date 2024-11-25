import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Hardcoded values for username, email, and phone number
    String username = 'John Doe';
    String email = 'john.doe@example.com';
    String mobile = '123-456-7890';

    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(username, email, mobile),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Profile'),
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
            'Username: $username',
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
