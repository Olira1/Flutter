import 'package:flutter/material.dart';
import 'registration_screen.dart';
import '../widgets/stat_card.dart';
import '../widgets/category_card.dart';
import '../widgets/app_drawer.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Registration'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: AppDrawer(currentRoute: 'home'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Banner
              Card(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.school,
                        size: 48,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Welcome to Student Portal',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Manage student registrations and profiles',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 24),
              
              // Section Title
              Text(
                'Quick Stats',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),

              // Statistics Cards Row
                Row(
                  children: [
                    Expanded(
                      child: StatCard(
                        icon: Icons.people,
                        value: '150',
                        label: 'Total Students',
                        color: Colors.green,
                      ),
                    ),
                    
                    SizedBox(width: 12),
                    
                    Expanded(
                      child: StatCard(
                        icon: Icons.person_add,
                        value: '25',
                        label: 'New This Month',
                        color: Colors.orange,
                      ),
                    ),
                    
                    SizedBox(width: 12),
                    
                    Expanded(
                      child: StatCard(
                        icon: Icons.book,
                        value: '8',
                        label: 'Active Courses',
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),

              
              SizedBox(height: 32),
              
              // Categories Section
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              SizedBox(height: 16),
              
              // Categories Grid
              Container(
                height: 200,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: [
                    CategoryCard(
                      icon: Icons.school,
                      title: 'Students',
                      subtitle: 'Manage student profiles',
                      color: Colors.blue,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegistrationScreen(),
                          ),
                        );
                      },
                    ),
                    
                    CategoryCard(
                      icon: Icons.book,
                      title: 'Courses',
                      subtitle: 'Browse available courses',
                      color: Colors.green,
                      onTap: () {
                        print('Courses tapped');
                      },
                    ),
                    
                    CategoryCard(
                      icon: Icons.bar_chart,
                      title: 'Reports',
                      subtitle: 'View analytics & reports',
                      color: Colors.orange,
                      onTap: () {
                        print('Reports tapped');
                      },
                    ),
                    
                    CategoryCard(
                      icon: Icons.settings,
                      title: 'Settings',
                      subtitle: 'App configuration',
                      color: Colors.purple,
                      onTap: () {
                        print('Settings tapped');
                      },
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 32),
              
              // Register Student Button
              Container(
                width: double.infinity,
                height: 56,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegistrationScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.person_add),
                  label: Text(
                    'Register New Student',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              
              SizedBox(height: 24),
              
              // Recent Activity Section
              Text(
                'Recent Activity',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              SizedBox(height: 16),
              
              // Recent Activity Card
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Latest Registrations',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '5 students registered today',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.trending_up,
                            color: Colors.green,
                            size: 32,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'View All Students',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}