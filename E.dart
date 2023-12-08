
abstract class Role {
  void displayRole();
}
class Person implements Role {
  String name;
  int age;
  String address;
  Role role;
  Person(this.name, this.age, this.address, this.role);
  String getName() => name;
  int getAge() => age;
  String getAddress() => address;
  @override
  void displayRole() {
    print("Role information:");
    role.displayRole();
  }
}
class Student extends Person {

  List<int> courseScores = [];

  Student(String name, int age, String address)
      : super(name, age, address, RoleStudent());

  double calculateAverageScore() {
    if (courseScores.isEmpty) {
      return 0.0; 
    }
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
  @override
  void displayRole() {
    super.displayRole();
    print("Name: ${getName()}");
    print("Age: ${getAge()}");
    print("Address: ${getAddress()}");
    print("Average Score: ${calculateAverageScore()}");
    print(""); // Empty line for better readability
  }
}
class Teacher extends Person {
  List<String> coursesTaught = [];
  Teacher(String name, int age, String address)
      : super(name, age, address, RoleTeacher());
  void displayCoursesTaught() {
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
  @override
  void displayRole() {
    super.displayRole();
    print("Name: ${getName()}");
    print("Age: ${getAge()}");
    print("Address: ${getAddress()}");
    displayCoursesTaught();
    print(""); 
  }
}
class RoleStudent implements Role {
  @override
  void displayRole() {
    print("Role: Student");
  }
}
class RoleTeacher implements Role {
  @override
  void displayRole() {
    print("Role: Teacher");
  }
}
class StudentManagementSystem {
  static void main() {
    var student = Student("John Doe", 20, "123 Main St");
    var teacher = Teacher("Mrs. Smith", 35, "456 Oak St");
    student.courseScores = [90, 85, 82];
    teacher.coursesTaught = ["Math", "English", "Bangla"];
    student.displayRole();
    teacher.displayRole();
  }
}
void main() {
  StudentManagementSystem.main();
}
