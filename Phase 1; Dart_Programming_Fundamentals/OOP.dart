// // Class
// // Blueprint for creating objects.


//  // OOP without Constructor or with Object

// class Student{
//     String name = '';
//     int age = 0;
// }

// void main(){
//     Student s1 = Student();
//     s1.name = 'Olira';
//     s1.age = 22;

//     Student s2 = Student();
//     s2.name = 'samuel';
//     s2.age = 24;

//     Student s3 = Student();
//     s3.name = 'Yohanis';
//     s3.age = 26;


//     print(s1.name);
//     print(s2.name);
//     print(s3.name);
// }



// // OOP with Constructor

// class Student{
//     String name = '';
//     int age = 0;

//     Student (this.name, this.age);
// }

// void main(){
//     Student s1 = Student('Olira', 22);
//     Student s2 = Student('samuel', 24);
//     Student s3 = Student('Yohanis', 26);

//     print(s1.name);
//     print(s2.name);
// }


// // Notice: Garaagarummaan with Object fi Constructor
// 1. akkuma fkn irraa ilaaltu in the object irra dadebine object create gochu qabna. but in constructor yeroo tokko constructor create gonaan  student hundayyu gize tokotti declear and intialize gochu dandenya.



// // Inheritance

class Person {
  void walk() {
    print("Walking");
  }
}

class Student extends Person {
  void study() {
    print("Studying");
  }
}

void main(){
    Student p = Student();

    p.walk();
    p.study();
}