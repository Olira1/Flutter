import 'package:flutter/material.dart';

class ActionButtonsSection extends StatelessWidget {
  final String title;
  const ActionButtonsSection({
    super.key,
    required this.title,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20,),
          )
      ],
    );
  }
}