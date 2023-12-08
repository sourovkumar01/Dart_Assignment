// Define the Role interface
abstract class Role {
  void displayRole();
}

// Define the Person class implementing the Role interface
class Person implements Role {
  // Attributes
  String name;
  int age;
  String address;

  // Reference to the Role interface
  Role role;

  // Constructor
  Person(this.name, this.age, this.address, this.role);

  // Getter methods
  String getName() => name;
  int getAge() => age;
  String getAddress() => address;

  // Implement the displayRole method from the Role interface
  @override
  void displayRole() {
    print("Role information:");
    role.displayRole();
  }
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
  // Create instances of the Person class with Student and Teacher roles
  var studentPerson = Person("John Doe", 20, "123 Street", Student());
  var teacherPerson = Person("Jane Smith", 30, "456 Avenue", Teacher());

  // Display role information for each person
  studentPerson.displayRole();
  teacherPerson.displayRole();
}
