import 'package:flutter/material.dart';

/// App Colors - Centralized color definitions for consistent theming
/// 
/// Why we use this approach:
/// 1. Consistent colors across the entire app
/// 2. Easy to change theme by modifying colors in one place
/// 3. Follows Material Design guidelines
/// 4. Professional Flutter development practice
class AppColors {
  // Primary Colors - Main brand colors
  static const Color primary = Color(0xFF2196F3);      // Blue
  static const Color primaryDark = Color(0xFF1976D2);   // Darker blue
  static const Color primaryLight = Color(0xFFBBDEFB);  // Light blue
  
  // Secondary Colors - Accent colors
  static const Color secondary = Color(0xFF03DAC6);     // Teal
  static const Color secondaryDark = Color(0xFF018786); // Dark teal
  
  // Background Colors
  static const Color background = Color(0xFFF5F5F5);    // Light grey
  static const Color surface = Colors.white;            // Card/container background
  
  // Text Colors
  static const Color textPrimary = Color(0xFF212121);   // Dark grey
  static const Color textSecondary = Color(0xFF757575); // Medium grey
  static const Color textHint = Color(0xFF9E9E9E);      // Light grey
  
  // Status Colors - For todo priorities and states
  static const Color success = Color(0xFF4CAF50);       // Green - completed todos
  static const Color warning = Color(0xFFFF9800);       // Orange - medium priority
  static const Color error = Color(0xFFF44336);         // Red - high priority
  static const Color info = Color(0xFF2196F3);          // Blue - low priority
  
  // Interactive Colors
  static const Color divider = Color(0xFFE0E0E0);       // Separators
  static const Color disabled = Color(0xFFBDBDBD);      // Disabled elements
  static const Color shadow = Color(0x1F000000);        // Shadows
}