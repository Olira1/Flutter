import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/contact_info_item.dart';
import '../widgets/social_media_section.dart';

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
            const ContactInfoItem(
              icon: Icons.phone,
              label: 'Phone',
              value: '+1 (555) 123-4567',
              iconColor: Colors.green,
            ),
            const ContactInfoItem(
              icon: Icons.email,
              label: 'Email',
              value: 'john.doe@example.com',
              iconColor: Colors.red,
            ),
            const ContactInfoItem(
              icon: Icons.location_on,
              label: 'Location',
              value: 'New York, NY',
              iconColor: Colors.orange,
            ),
            const ContactInfoItem(
              icon: Icons.language,
              label: 'Website',
              value: 'www.johndoe.dev',
              iconColor: Colors.blue,
            ),
            SizedBox(height: 20),

            // Social Media Section
            const SocialMediaSection(),
            SizedBox(height: 20),

            // Action Buttons Section
            Text('Action buttons will go here', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
