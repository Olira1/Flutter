import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Profile Image with fallback
        CircleAvatar(
          radius: 60,
          backgroundColor: Colors.grey[300],
          // Option 1: Use network image (works immediately)
          backgroundImage: _getProfileImage(),
          // Option 2: Fallback to icon if no image
          child: _getProfileImage() == null
              ? Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.grey[600],
                )
              : null,
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

  // Helper method to get profile image
  ImageProvider? _getProfileImage() {
    // Option 1: Use a sample network image (works immediately)
    // Using a professional placeholder profile image:
    return const NetworkImage('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=300&h=300&fit=crop&crop=face');
    
    // Option 2: Use local asset (add profile.jpg to assets/images/ folder first)
    // Uncomment the line below after adding your image:
    // return const AssetImage('assets/images/profile.jpg');
    
    // Option 3: Keep showing icon placeholder (current setting)
    // return null;
  }
}