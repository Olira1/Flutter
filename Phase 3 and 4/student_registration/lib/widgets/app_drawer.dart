import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/registration_screen.dart';
import '../screens/dashboard_screen.dart';
import '../constants/app_colors.dart';

class AppDrawer extends StatelessWidget {
  final String currentRoute;

  const AppDrawer({
    super.key,
    required this.currentRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Drawer Header
          Container(
            height: 300,
            child: DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.blue.shade300,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.school,
                      size: 40,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Student Portal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Management System',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Navigation Items
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildNavItem(
                  context: context,
                  icon: Icons.home,
                  title: 'Home',
                  route: 'home',
                  onTap: () => _navigateTo(context, const HomeScreen(), 'home'),
                ),
                
                _buildNavItem(
                  context: context,
                  icon: Icons.person_add,
                  title: 'Register Student',
                  route: 'registration',
                  onTap: () => _navigateTo(context, const RegistrationScreen(), 'registration'),
                ),
                
                _buildNavItem(
                  context: context,
                  icon: Icons.dashboard,
                  title: 'Dashboard',
                  route: 'dashboard',
                  onTap: () => _navigateTo(context, const DashboardScreen(), 'dashboard'),
                ),
                
                Divider(),
                
                _buildNavItem(
                  context: context,
                  icon: Icons.people,
                  title: 'All Students',
                  route: 'students',
                  onTap: () => _showComingSoon(context, 'All Students'),
                ),
                
                _buildNavItem(
                  context: context,
                  icon: Icons.book,
                  title: 'Courses',
                  route: 'courses',
                  onTap: () => _showComingSoon(context, 'Courses'),
                ),
                
                _buildNavItem(
                  context: context,
                  icon: Icons.assessment,
                  title: 'Reports',
                  route: 'reports',
                  onTap: () => _showComingSoon(context, 'Reports'),
                ),
                
                Divider(),
                
                _buildNavItem(
                  context: context,
                  icon: Icons.settings,
                  title: 'Settings',
                  route: 'settings',
                  onTap: () => _showComingSoon(context, 'Settings'),
                ),
                
                _buildNavItem(
                  context: context,
                  icon: Icons.help,
                  title: 'Help & Support',
                  route: 'help',
                  onTap: () => _showComingSoon(context, 'Help & Support'),
                ),
              ],
            ),
          ),
          
          // Footer
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String route,
    required VoidCallback onTap,
  }) {
    bool isSelected = currentRoute == route;
    
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? Colors.blue.withOpacity(0.1) : Colors.transparent,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isSelected ? Colors.blue : Colors.grey[600],
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.grey[800],
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        onTap: onTap,
        selected: isSelected,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context, Widget screen, String route) {
    if (currentRoute != route) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => screen),
      );
    } else {
      Navigator.pop(context); // Just close drawer if same screen
    }
  }

  void _showComingSoon(BuildContext context, String feature) {
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$feature feature coming soon!'),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
