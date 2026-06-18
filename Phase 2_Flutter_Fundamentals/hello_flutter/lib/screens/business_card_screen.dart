import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/contact_info_item.dart';
import '../widgets/social_media_section.dart';
import '../widgets/action_buttons_section.dart';

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Header Section
              ProfileHeader(),
              SizedBox(height: 20),

              // Contact Info Section
              ContactInfoItem(
                icon: Icons.phone,
                label: 'Phone',
                value: '+1 (555) 123-4567',
                iconColor: Colors.green,
              ),
              ContactInfoItem(
                icon: Icons.email,
                label: 'Email',
                value: 'john.doe@example.com',
                iconColor: Colors.red,
              ),
              ContactInfoItem(
                icon: Icons.location_on,
                label: 'Location',
                value: 'New York, NY',
                iconColor: Colors.orange,
              ),
              ContactInfoItem(
                icon: Icons.language,
                label: 'Website',
                value: 'www.johndoe.dev',
                iconColor: Colors.blue,
              ),
              SizedBox(height: 20),

              // Social Media Section
              SocialMediaSection(),
              SizedBox(height: 20),

              // Action Buttons Section
              ActionButtonsSection(),
              
              // Bottom padding for better visual spacing
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
