import 'package:flutter/material.dart';

class SocialMediaSection extends StatelessWidget {
  final String title;
  const SocialMediaSection({
    super.key,
    required this.title,
    });

  @override
  Widget build(BuildContext context) {
        return Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20),
              )
              ]
              );
  }
}