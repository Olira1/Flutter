import 'package:flutter/material.dart';

class ContactInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color? iconColor;

  const ContactInfoItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),

      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: (iconColor ?? Colors.blue).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Icon(
              icon,
              color: iconColor ?? Colors.blue,
              size: 20,
              ),
          ),

          SizedBox(width: 15,),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ), 

              SizedBox(height: 0), 

              Text(
                value,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                ),
                ],
            ),
          ),
        ],
      ),
    );
  }
}
