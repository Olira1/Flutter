// TODO: Define Student model here
class Student {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String department;
  final int age;
  final DateTime registrationDate;

  Student({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.department,
    required this.age,
    required this.registrationDate,
  });

  // Create a Student from form data
  factory Student.fromFormData({
    required String name,
    required String email,
    required String phone,
    required String department,
    required int age,
  }) {
    return Student(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      email: email,
      phone: phone,
      department: department,
      age: age,
      registrationDate: DateTime.now(),
    );
  }

  // Convert Student to readable string
  @override
  String toString() {
    return 'Student{id: $id, name: $name, email: $email, phone: $phone, department: $department, age: $age, registrationDate: $registrationDate}';
  }

  // Get formatted registration date
  String get formattedDate {
    return '${registrationDate.day}/${registrationDate.month}/${registrationDate.year}';
  }

  // Get student initials for avatar
  String get initials {
    List<String> nameParts = name.split(' ');
    if (nameParts.length >= 2) {
      return '${nameParts[0][0]}${nameParts[1][0]}'.toUpperCase();
    } else if (nameParts.isNotEmpty) {
      return nameParts[0][0].toUpperCase();
    }
    return 'S';
  }
}
