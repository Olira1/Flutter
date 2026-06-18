import 'package:flutter/material.dart';

class ActionButtonsSection extends StatelessWidget {
  const ActionButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primary Action Button (Contact Me)
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () => _handleContactPress(context),
            icon: const Icon(Icons.phone),
            label: const Text(
              'Contact Me',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
            ),
          ),
        ),
        
        const SizedBox(height: 12),
        
        // Secondary Action Buttons Row
        Row(
          children: [
            // Hire Me Button
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _handleHirePress(context),
                icon: const Icon(Icons.work_outline),
                label: const Text(
                  'implement follow button with toggleable state logic',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  side: const BorderSide(color: Colors.green, width: 2),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            
            const SizedBox(width: 12),
            
            // Download CV Button
            Expanded(
              child: TextButton.icon(
                onPressed: () => _handleDownloadPress(context),
                icon: const Icon(Icons.download),
                label: const Text(
                  'Download CV',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.grey[700],
                  backgroundColor: Colors.grey[100],
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _handleContactPress(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('📞 Contact feature would open here!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _handleHirePress(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('💼 Hire me form would open here!'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.green,
      ),
    );
  }

  void _handleDownloadPress(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('📄 CV download would start here!'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      ),
    );
  }
}