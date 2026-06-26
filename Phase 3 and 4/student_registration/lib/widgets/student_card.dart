// TODO: Build Student Card widget here
import 'package:flutter/material.dart';
import '../models/student.dart';
import '../constants/app_colors.dart';

class StudentCard extends StatelessWidget {
  final Student student;
  final VoidCallback? onTap;

  const StudentCard({
    super.key,
    required this.student,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Student Avatar
              CircleAvatar(
                radius: 24,
                backgroundColor: AppColors.getDepartmentColor(student.department),
                child: Text(
                  student.initials,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              
              SizedBox(width: 12),
              
              // Student Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      student.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      student.department,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    Text(
                      student.email,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              
              // Registration Date
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.getDepartmentColor(student.department).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'ID: ${student.id}',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: AppColors.getDepartmentColor(student.department),
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    student.formattedDate,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
