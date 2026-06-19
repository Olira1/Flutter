import 'package:flutter/material.dart';

class ContactInfoItem extends StatelessWidget {
  final String title;
  const ContactInfoItem({
    super.key,
    required this.title,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Text(title,
      style: TextStyle(fontSize: 20)
      )
      
      ],
  
    );
  }
}