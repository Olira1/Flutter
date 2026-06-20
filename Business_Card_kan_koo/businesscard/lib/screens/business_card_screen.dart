import 'package:flutter/material.dart';
import '../Widget/profile_header.dart';
import '../Widget/contact_info_item.dart';
import '../Widget/social_media_section.dart';
import '../Widget/action_buttons_section.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Card'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),

          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileHeader(),
                ContactInfoItem(
                  icon: Icons.phone,
                  label: 'phone',
                  value: '+251 982403205',
                  iconColor: Colors.green,
                ),
                SizedBox( height: 15,),
                ContactInfoItem(
                  icon: Icons.email,
                  label: 'Email',
                  value: 'oliratesgera1.gmail.com',
                  iconColor: Colors.redAccent,
                ),
                SizedBox(height: 15),
                ContactInfoItem(
                  icon: Icons.location_on,
                  label: 'Location',
                  value: 'Ejere',
                  iconColor: Colors.orange,
                ),
                SizedBox(height: 15),
                ContactInfoItem(
                  icon: Icons.language,
                  label: 'Website',
                  value: 'https://iqfs.et',
                  iconColor: Colors.blue,
                ),
                SizedBox(height: 25),
                SocialMediaSection(title: 'your contact will be here'),
                ActionButtonsSection(title: 'Your action will be here'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
