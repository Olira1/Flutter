import 'package:flutter/material.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title
        const Text(
          'Connect with me',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        
        const SizedBox(height: 12),
        
        // Social Media Icons Row
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
              color: const Color(0xFF333333),
              onTap: () => _showMessage('GitHub clicked!'),
            ),
            _SocialIcon(
              icon: Icons.alternate_email,
              label: 'Twitter',
              color: const Color(0xFF1DA1F2),
              onTap: () => _showMessage('Twitter clicked!'),
            ),
            _SocialIcon(
              icon: Icons.language,
              label: 'Portfolio',
              color: const Color(0xFF6366F1),
              onTap: () => _showMessage('Portfolio clicked!'),
            ),
          ],
        ),
      ],
    );
  }
  
  void _showMessage(String message) {
    // For now, just a placeholder - in real apps this would open URLs
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
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: color.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: color,
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}