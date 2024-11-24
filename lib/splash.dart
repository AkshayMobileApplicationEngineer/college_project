import 'package:flutter/material.dart';
import 'package:college_project/login.dart'; // Make sure to import your login screen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Hardcoding version, build number, and company name
  String version = '1.0.0';
  String buildNumber = '100';
  String companyName = 'Your Company Name'; // Replace with your company name

  @override
  void initState() {
    super.initState();

    // Navigate to the Login screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400], // Optional background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildWelcomeText(),
            _buildLogo(), // Logo in the center
            _buildFooter(), // Footer with version and company name
          ],
        ),
      ),
    );
  }

  // Function to display network image logo
  Widget _buildLogo() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0), // Add some vertical padding if needed
      child: Image.network(
        'https://th.bing.com/th/id/OIP.TorKEAyuH8J_9ey71ZH9CQHaHa?w=2000&h=2000&rs=1&pid=ImgDetMain', // Replace with your network image URL
        height: 100, // Adjusted size for better visibility
        width: 100, // Adjusted size for better visibility
        fit: BoxFit.contain, // Ensure the image is responsive
      ),
    );
  }

  // Function to display the welcome text
  Widget _buildWelcomeText() {
    return const Text(
      'Welcome to MyShop', // Replace with your app's name or tagline
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  // Function to display the footer with version, build number, and company name
  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Version: $version',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          Text(
            'Build Number: $buildNumber',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          Text(
            'Company: $companyName',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
