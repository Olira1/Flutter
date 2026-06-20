import 'package:flutter/material.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
      Text(
        'Connect with me',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),

        SizedBox(height: 10,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           _SocialIcon(
          icon: Icons.work,
          label: 'LinkedIn',
          color: const Color(0xFF0077B5),
          onTap: () => _showMessage('LinkedIn clicked!'),
        ),
           _SocialIcon(
          icon: Icons.code,
          label: 'GitHub',
          color: const Color(0xFF3A3A3A),
          onTap: () => _showMessage('GitHub clicked!'),
        ),
           _SocialIcon(
          icon: Icons.work,
          label: 'Twitter',
          color: const Color(0xFF2EA7F2),
          onTap: () => _showMessage('Twitter clicked!'),
        ),
           _SocialIcon(
          icon: Icons.work,
          label: 'Portfolio',
          color: const Color(0xFF6568F1),
          onTap: () => _showMessage('Portfolio clicked!'),
        )
        ]

      )
    ]);
  }

   void _showMessage(String message){
        debugPrint(message);
       }

}



class _SocialIcon extends StatelessWidget {

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _SocialIcon({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      
        child: Container(
         padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: color.withValues(alpha: 0.2), width: 1
            ),
        ),



      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color:color, size: 24,),
          const SizedBox(height: 4,),
          Text(
          label
          )
        ],
      ),
        )
      );
  }
}


