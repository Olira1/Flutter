import 'package:flutter/material.dart';
// import 'screens/business_card_screen.dart';

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // App configuration
      title: 'Business Card App',
      debugShowCheckedModeBanner: false,
      
      // App theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      
      // Home screen
    //   home: const BusinessCardScreen(),
    );
  }
}

