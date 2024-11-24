import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  // ignore: unused_element
  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Login',
      style: TextStyle(color: Colors.white)
      ),
      centerTitle: true,
      backgroundColor: Colors.deepPurple[400],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: _buildLoginCard(context),
        ),
      ),
    );
  }

  Widget _buildLoginCard(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTitle(),
            const SizedBox(height: 40),
            _buildEmailField(),
            const SizedBox(height: 20),
            _buildPasswordField(),
            const SizedBox(height: 30),
            _buildLoginButton(context),
            const SizedBox(height: 10),
            _buildSignUpButton(context),
            _buildForgotPasswordButton(context),
            const SizedBox(height: 10),
            _buildDemoText(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Login',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
    );
  }

  Widget _buildEmailField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.deepPurple[400]),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.deepPurple[400]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.deepPurple[400]),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.deepPurple[400]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
      ),
      obscureText: true,
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/home');
      },
      icon: const Icon(Icons.arrow_forward),
      label: const Text('Login'),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
        minimumSize: const Size(double.infinity, 0),
      ),
    );
  }

  Widget _buildForgotPasswordButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Navigate to forget password screen
        Navigator.pushReplacementNamed(context, '/forgotpassword');
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.deepPurple[400],
      ),
      child: const Text('Forgot Password?'),
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Navigate to sign-up screen
        Navigator.pushReplacementNamed(context, '/sign-up');
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.deepPurple[400],
      ),
      child: const Text('Sign Up'),
    );
  }

  Widget _buildDemoText() {
    return const Text(
      'Email: user@example.com\nPassword: password123',
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    );
  }
}
