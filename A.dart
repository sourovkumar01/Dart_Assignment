// Define the Role interface
abstract class Role {
  // Declare the method to be implemented by classes
  void displayRole();
}

// Implement the Role interface for the Student class
class Student implements Role {
  @override
  void displayRole() {
    print("I am a Student");
  }

  // Add additional methods and properties specific to the Student class
}

// Implement the Role interface for the Teacher class
class Teacher implements Role {
  @override
  void displayRole() {
    print("I am a Teacher");
  }

  // Add additional methods and properties specific to the Teacher class
}

void main() {
  // Create instances of the classes
  var student = Student();
  var teacher = Teacher();

  // Call the displayRole method for each instance
  student.displayRole();
  teacher.displayRole();
}
