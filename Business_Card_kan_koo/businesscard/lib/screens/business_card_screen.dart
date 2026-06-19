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
            padding: EdgeInsets.all(0),

            child: Column(
              children: [
                ProfileHeader(
                  title: 'your profile will be written here',
                ),
                ContactInfoItem(),
                SocialMediaSection(),
                ActionButtonsSection(),
              ],
            ),
          )

          
        ),
    );
  }
}
