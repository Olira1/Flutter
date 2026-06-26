// TODO: Build Custom Text Field widget here
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool isRequired;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.isRequired = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isRequired ? '$label *' : label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            prefixIcon: Icon(prefixIcon),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2,
              ),
            ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
