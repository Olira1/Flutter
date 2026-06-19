import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {

  const ProfileHeader({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 60,
           backgroundColor: Colors.blueAccent,
          child:const Icon(
            Icons.person,
            color: Colors.black,
            size: 60,
          ),
        ),
        
        SizedBox(height: 6),

        Text(
          'Olira Tesgera',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),

        SizedBox(height: 6),

        Text(
          'Senior Flutter Developer',
          style: TextStyle(color: Colors.green, fontSize: 20),
        ),

        SizedBox(height: 6),

        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: Text(         
             'Passionate about creating beautiful and functional mobile apps with Flutter. 5+ years of experience in mobile development.',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, height: 1.4),)

        ),

        SizedBox(height: 10),
        
      ],
    );
  }
}