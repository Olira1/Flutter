// TODO: Define app colors here
import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Colors.blue;
  static const Color primaryLight = Color(0xFF64B5F6);
  static const Color primaryDark = Color(0xFF1976D2);
  
  // Secondary Colors
  static const Color secondary = Color(0xFF26A69A);
  static const Color accent = Color(0xFFFF7043);
  
  // Neutral Colors
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Colors.white;
  static const Color divider = Color(0xFFE0E0E0);
  
  // Text Colors
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textHint = Color(0xFF9E9E9E);
  
  // Status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF9800);
  static const Color error = Color(0xFFF44336);
  
  // Department Colors
  static const Color computerScience = Color(0xFF2196F3);
  static const Color engineering = Color(0xFF4CAF50);
  static const Color business = Color(0xFFFF9800);
  static const Color medicine = Color(0xFFE91E63);
  static const Color arts = Color(0xFF9C27B0);
  
  // Get color by department name
  static Color getDepartmentColor(String department) {
    switch (department.toLowerCase()) {
      case 'computer science':
        return computerScience;
      case 'engineering':
        return engineering;
      case 'business':
        return business;
      case 'medicine':
        return medicine;
      case 'arts':
        return arts;
      default:
        return primary;
    }
  }
}
