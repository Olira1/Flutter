import 'package:flutter/material.dart';

class ActionButtonsSection extends StatelessWidget {

  const ActionButtonsSection({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

          ElevatedButton.icon(
          onPressed: () {
            debugPrint('Elevated Button Pressed');
          },
          icon: const Icon(Icons.phone), 
          label: const Text('Contact Me'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF329EF4),
            foregroundColor: Colors.white,
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
        ),
        
        SizedBox(height: 10,),


        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

              OutlinedButton.icon(
                onPressed:() {
                debugPrint('Hire me form would open here!');
              }, 
              icon: Icon(Icons.work),
              label: Text('Hire Me'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Color(0xFF4CAF50),
                side: BorderSide(color: Color(0xFF4CAF50), width: 2),
                padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              ),

              TextButton.icon(
                onPressed:() {
                debugPrint('Cv download would start here!');
              }, 
              icon: Icon(Icons.download),
              label: Text('Download CV'),
              style: TextButton.styleFrom(
                foregroundColor: Color(0xFF616161),
                backgroundColor: Color(0xFFEAEAEA),
                padding: EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              )
          ],
        )
      ],
    );
  }
}

