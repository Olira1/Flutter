import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Card'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary.withValues(alpha: 1), 
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Header Section
            const ProfileHeader(),
            SizedBox(height: 20),

            // Contact Info Section
            Text('Contact info will go here', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),

            // Social Media Section
            Text('Social media will go here', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),

            // Action Buttons Section
            Text('Action buttons will go here', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
