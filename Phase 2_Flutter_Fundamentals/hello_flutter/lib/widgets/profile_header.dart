import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Profile Image
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey[300],
          child: Icon(
            Icons.person,
            size: 60,
            color: Colors.grey[600],
          ),
        ),
        
        const SizedBox(height: 16),
        
        // Name
        const Text(
          'Olira Tesgera',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        
        const SizedBox(height: 8),
        
        // Job Title
        const Text(
          'Senior Flutter Developer',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.green,
          ),
        ),
        
        const SizedBox(height: 12),
        
        // Bio
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Passionate about creating beautiful and functional mobile apps with Flutter. 5+ years of experience in mobile development.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              height: 1.4,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}