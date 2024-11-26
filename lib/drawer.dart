import 'package:flutter/material.dart';
import 'package:college_project/profile_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
//import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatefulWidget {
  final String username;
  final String email;

  const AppDrawer({
    required this.username,
    required this.email,
    super.key,
  });

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  String _appName = '';
  String _appVersion = '';
  String _buildNumber = '';

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _appName = packageInfo.appName;
      _appVersion = packageInfo.version;
      _buildNumber = packageInfo.buildNumber;
    });
  }

  // void _launchUrl(String url) async {
  //   final uri = Uri.parse(url);
  //   if (await canLaunchUrl(uri)) {
  //     await launchUrl(uri);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  void _showSnackBar(BuildContext context, String message) {
    Navigator.pop(context); // Close the drawer
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple[400],
            ),
            accountName: Text(
              widget.username,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              widget.email,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/ACg8ocJzxHi_8woXlVYo0BW4C_cuE06cFrWQ7vpJ_gDCG_xyFnYTvc45=s360-c-no'), // Replace with your image URL
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Add navigation logic here
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Add logout logic here
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'College Project',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Version $_appVersion ($_buildNumber)',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.facebook),
                      onPressed: () {
                        _showSnackBar(context, 'Clicked on Facebook');
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.telegram),
                      onPressed: () {
                        _showSnackBar(context, 'Clicked on Telegram');
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.twitter),
                      onPressed: () {
                        _showSnackBar(context, 'Clicked on Twitter');
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      onPressed: () {
                        //_launchUrl('https://www.linkedin.com/company/panlogicsolutionteam');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            'Copyright © 2023\nPanlogic Solution Team\nRIT College Koderma',
            style: const TextStyle(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
