import 'dart:math';

void main() {

  print("Mini-exercises");

  print("-----------------------------------------------------------------------");
  print("1. Create a class called Password and give it a string property called value.");
  print("2. Override the toString method of Password so that it prints value.");

  final newPassword = Password();
  newPassword.value = '218176';
  print(newPassword);

  print("3. Add a method to Password called isValid that returns true only if the length of value is greater than 8.");

  int lenght = newPassword.value.length;
  print('Value lenght is $lenght.');
  print(newPassword.isValid());
  print("-----------------------------------------------------------------------");

  print(" Given \"newPassord\" class");
  print("1. Make value a final variable, but not private.");
  print("2. Add a const constructor as the only way to initialize newPassword object.");
  print("-----------------------------------------------------------------------");

  print("-----------------------------------------------------------------------");
  print("Challenges");
  print("-----------------------------------------------------------------------");

  print("Challenge 1: Bert and Ernie");
  print("1. Create a Student class with final firstName and lastName String properties and a variable grade as an int property.");
  print("2. Add a constructor to the class that initializes all the properties. ");
  print("3. Add a method to the class that nicely formats a Student for printing.");
  print("4. Use the class to create students bert and ernie with grades of 95 and 85, respectively.");

  final Student bert = Student("Bert", "No last name", 95);
  print(bert);
  final Student ernie = Student("Ernie", "No last name.", 85);
  print(ernie);
  print("-----------------------------------------------------------------------");

  print("Challenge 2: Spheres");
  print("1. Create a Sphere class with a const constructor that takes a positive length radius as a named parameter.");
  print("2. Add getters for the the volume and surface area but none for the radius.");
  print("3. Don’t use the dart:math package but store your own version of pi as a static constant. ");
  print("4. Use your class to find the volume and surface area of a sphere with a radius of 12.");

  final Sphere sphereRadius12 = Sphere(radius: 12);
  print(sphereRadius12.findSphereArea);
  print(sphereRadius12.findSphereVolume);
}

class Password {
  String value = '';

  @override
  String toString() {
    return value;
  }

  bool isValid()=> value.length > 8;
}

class NewPassword {
  final String value = "";

  const NewPassword();
}

class Student {
  final String firstName;
  final String lastName;
  int grade;

  Student(this.firstName, this.lastName, this.grade);

  @override
  String toString() {
    return "Student (First Name: $firstName, Last Name: $lastName, grade: $grade)";
  }
}

class Sphere {
  final int radius;

  const Sphere ({required this.radius})
      : assert (radius >= 0 );

  static const pi = 3.14;

  double get findSphereVolume {
    return (4 / 3) * pi * pow(radius,3);
  }

  double get findSphereArea {
    return 4 * pi * pow(radius, 2);
  }
}