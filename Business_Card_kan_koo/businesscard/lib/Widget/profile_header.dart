import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {

  final String title;


  const ProfileHeader({
    super.key,
    required this.title,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20,),
        )
        
      ],
    );
  }
}